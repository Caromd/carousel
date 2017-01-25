Rails.application.routes.draw do

  root 'vehicles#index'
  resources :vehicles

  namespace :admin do
    root 'vehicles#index'
  	resources :vehicles
  	resources :interior_colours
  	resources :paint_colours
  	resources :plans
  	resources :models
  	resources :makes
  end

	devise_for :users
  resources :messages
  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

  get '/services' => 'pages#services'
  get '/howitworks' => 'pages#howitworks'
  get '/contact' => 'pages#contact'

end
