class Companies::EventsController < ApplicationController
  load_and_authorize_resource  

  def index
    @events = current_company.events
  end

  def show
    @event = current_company.events.find(params[:id])
  end

  def new
    @event = current_company.events.new
  end

  def create
    @event = current_company.events.new(params[:event])
    if @event.save
      redirect_to company_event_path(current_company, @event), :notice => "Successfully created event."
    else
      render :action => 'new'
    end
  end

  def edit
    @event = current_company.events.find(params[:id])
  end

  def update
    @event = current_company.events.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to company_event_path(current_company, @event), :notice  => "Successfully updated event."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @event = current_company.events.find(params[:id])
    @event.destroy
    redirect_to company_events_url(current_company), :notice => "Successfully destroyed event."
  end
end
