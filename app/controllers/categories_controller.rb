class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to categories_url, :notice => "Successfully created category."
    else
      render :action => 'new'
    end
  end
end
