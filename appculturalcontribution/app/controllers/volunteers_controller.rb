class VolunteersController < ApplicationController
    def create
    @volunteer = Volunteer.create!(volunteer_params)
    end
    def volunteer_params
    params.require(:volunteer).permit(:event_id,:user_id)
    end
end
