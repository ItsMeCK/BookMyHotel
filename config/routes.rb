Rails.application.routes.draw do

  get 'rooms/get_available_rooms'

  resources :xyzs
  resources :customers
  resources :bookings
  resources :rooms
  resources :items
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations" }
  authenticated :user do
  	root :to => 'home#index'
  end
  devise_scope :user do
  	get '/', to: 'devise/sessions#new'
  end
  
  root  "users/sessions#new"  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
