 class ApiCommunicator
 
 
   def all_data
      JSON.parse(HTTP.auth("").get("https://www.eventbriteapi.com/v3/events/search/?location.address=England&subcategories=14009").to_s) 
   end

   def event
      all_data["events"]
   end
  
   # def event_names
   #    event.each do |key|
   #       key["name"]
   #    end
   # end
   def result 
    all_data["events"].map do |event| 
      { name: event["name"]["text"], description: event["description"]["text"], url: event["url"] } 
   end

   def event_names
      event.map { |event| event }
   end

  




end