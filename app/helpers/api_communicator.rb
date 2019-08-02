 class ApiCommunicator
 
 
   def self.all_data
      JSON.parse(HTTP.auth("Bearer HV5IST6QLORF4Y6ZDHUC").get("https://www.eventbriteapi.com/v3/events/search/?location.address=England&subcategories=14009").to_s) 
   end

   def event
      self.all_data["events"]
   end
  
   # def event_names
   #    event.each do |key|
   #       key["name"]
   #    end
   # end

   def self.result 
    all_data["events"].map do |event|
      { name: event["name"]["text"], description: event["description"]["text"], url: event["url"], event_id: event["id"], start_time: event["start"]["local"], event_image: self.image(event)} 
    end
   end

   def self.image(result)
         if !!result["logo"]
            result["logo"]["original"]["url"] 
         else
            "https://images.unsplash.com/photo-1534804442465-9689d85be37b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2849&q=80" 
         end
   end

   def event_names
      event.map { |event| event }
   end


end