class EventsController < ApplicationController
    
    def index
        @events = ApiCommunicator.result
    end
    
    def show
    end


    def set_event
        params.require(:event).permit(:name, :date, :api_id, :event_url, :event_image)
    end
   
end
