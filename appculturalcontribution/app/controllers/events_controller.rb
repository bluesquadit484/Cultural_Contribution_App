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
    flash[:notice] = "#{@event.date} was successfully created."
    redirect_to events_path
    end

    def edit
    @event = Event.find params[:id]
    end
    def update
    @event = Event.find params[:id]
    @event.update_attributes!(event_params)
    flash[:notice] = "#{@event.date} was successfully updated."
    redirect_to event_path(@event)
    end
    
    def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Event'#{@event.date}' deleted."
    redirect_to events_path
    end
    
    def event_params
    params.require(:event).permit(:date,:location,:start_time, :total_hrs, :spots, :description)
    end
end
