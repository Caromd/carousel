Rails.application.routes.draw do
  root 'client/vehicles#index'

  namespace :admin do
    root 'vehicles#index'
  	resources :vehicles
  	resources :interior_colours
  	resources :paint_colours
  	resources :plans
  	resources :models
  	resources :makes
  	devise_for :users
  end

  namespace :client do
    root 'vehicles#index'
    resources :vehicles
  end

  resources :messages
  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'
end
