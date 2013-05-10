class CompaniesController < ApplicationController
  load_and_authorize_resource  
 
  def index
    @companies = Company.all
  end

  def show
    @company = current_company  
  end
  
end
