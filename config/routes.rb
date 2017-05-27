Rails.application.routes.draw do

mount Attachinary::Engine => "/attachinary"
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
  get 'apply', to: 'messages#new', as: 'apply'
  post 'apply', to: 'messages#create'

  resources :contacts, only: [:new, :create]
  get 'contact', to: 'contacts#new'
  post 'contact', to: 'contacts#create'


  get '/howitworks' => 'pages#howitworks'

end
