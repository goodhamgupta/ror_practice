Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  # Changing users new to users signup url
  get '/signup', to: 'users#new'
  # Adds RESTful endpoints for User model
  resources :users
end