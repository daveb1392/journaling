class MeditationsController < ApplicationController

    def index 
        @meditations = Meditation.all
    end

    def show
        @meditation = Meditation.find(params[:id])
    end


end

