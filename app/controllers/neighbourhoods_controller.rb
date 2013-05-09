class NeighbourhoodsController < ApplicationController
  def index
    @neighbourhoods = Neighbourhood.all
  end

  def new
    @neighbourhood = Neighbourhood.new
  end

  def create
    @neighbourhood = Neighbourhood.new(params[:neighbourhood])
    if @neighbourhood.save
      redirect_to neighbourhoods_url, :notice => "Successfully created neighbourhood."
    else
      render :action => 'new'
    end
  end

  def edit
    @neighbourhood = Neighbourhood.find(params[:id])
  end

  def update
    @neighbourhood = Neighbourhood.find(params[:id])
    if @neighbourhood.update_attributes(params[:neighbourhood])
      redirect_to neighbourhoods_url, :notice  => "Successfully updated neighbourhood."
    else
      render :action => 'edit'
    end
  end
end
