class EventsController < ApplicationController
    def index
        @events = Event.all 
    end

    def show
        @event = Event.find(params[:id])
        @users = @event.users
    end
    def new
        @event = Event.new
    end 
    def create
    params.require(:event)
    params[:event].permit(:date,:location,:start_time)
    end

    def create
    @event = Event.create!(event_params)
    flash[:notice] = "#{@event.location} was successfully created."
    redirect_to event_path
    end
end
