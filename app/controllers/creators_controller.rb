class CreatorsController < ApplicationController
  def info
    @created_events = current_user.created_events
    @past_events = current_user.attended_event.past
    @upcoming_events = current_user.attended_event.upcoming
  end
end
