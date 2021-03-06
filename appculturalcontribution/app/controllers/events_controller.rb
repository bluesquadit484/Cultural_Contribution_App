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
    params[:event].permit(:date,:location,:start_time, :total_hrs, :spots, :description)
    end

    def create
    @event = Event.create!(event_params)
    flash[:notice] = "Event: '#{@event.description}' was successfully created."
    redirect_to events_path
    end

    def edit
    @event = Event.find params[:id]
    end
    def update
    @event = Event.find params[:id]
    @event.update_attributes!(event_params)
    flash[:notice] = "Event: '#{@event.description}' was successfully updated."
    redirect_to events_path
    #WOULD BE NICE TO HAVE A FLASH MESSAGE HERE
    end
    
    def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Event: '#{@event.description}' was successfully deleted."
    redirect_to events_path
    end
    
    def event_params
    params.require(:event).permit(:date,:location,:start_time, :total_hrs, :spots, :description)
    end
end
