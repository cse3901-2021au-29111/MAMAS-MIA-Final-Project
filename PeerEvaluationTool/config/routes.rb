Rails.application.routes.draw do
  get 'users/new'
  # Home page root route
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'signup' => 'users#new'

  resources :users
end
