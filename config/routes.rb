Rails.application.routes.draw do
  root 'flights#index'
  get 'bookings/new', to: 'bookings#new'
  post 'bookings/new', to: 'bookings#create'
  resources :bookings, only: [:show]
end
