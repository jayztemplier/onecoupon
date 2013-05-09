OpenCoupon::Application.routes.draw do
  resources :events

  resources :categories

  resources :companies

  resources :neighbourhoods

  resources :cities

  root :to => "companies#index"
end
