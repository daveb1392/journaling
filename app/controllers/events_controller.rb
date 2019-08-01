class EventsController < ApplicationController
    
    def index
        @events = ApiCommunicator.result
    end
    
    def show
    end

   
end
