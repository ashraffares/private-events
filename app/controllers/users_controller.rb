class UsersController < ApplicationController
    def index
        @created_events = current_user.created_events
        @past_events = current_user.attended_event.past
        @upcoming_events = current_user.attended_event.upcoming
    end
    private 
    def event_params
        params.require(:event).permit(:email, :encrypted_password)
    end
end
