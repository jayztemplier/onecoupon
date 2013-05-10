class ApplicationController < ActionController::Base
  protect_from_forgery
	
	rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  def after_sign_in_path_for(resource)
  	if resource.is_a?(Company) && current_company
  		company_path(@current_company)
  	else
  		root_path
  	end
  end

  def current_ability
  	if current_company
  		@current_ability ||= CompanyAbility.new(current_company)
  	else
  		@current_ability ||= GuestAbility.new(nil)
  	end
	end

end
