class EventsController < ApplicationController
  load_and_authorize_resource  
  def index
    @events = Event.in_the_future.validated
  end

  def show
    @event = Event.validated.find(params[:id])
  end
end
