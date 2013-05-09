OpenCoupon::Application.routes.draw do
	
  root :to => "companies#index"
  devise_for :companies, :sign_out_via => [ :get ]
  resources :companies, except: :show

  resources :events
  resources :categories
  resources :neighbourhoods
  resources :cities
end
