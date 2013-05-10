OpenCoupon::Application.routes.draw do
	
  root :to => "storefronts#index"
  resources :storefront, controller: "Storefronts"

  devise_for :companies
  resources :companies, only: [:index, :show] do
  	resources :events, controller: "Companies::Events"
	end
  resources :events, only: [:index, :show]
	resources :categories
  resources :neighbourhoods
  resources :cities
end
