Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'sessions/new'
  root 'static_pages#about'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'signup' => 'users#new'
  get 'home' => 'static_pages#home'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  post 'users/:id' => 'static_pages#home'
  post 'ratings' => 'ratings#create'
  post '' => 'static_pages#home'
  delete 'logout' => 'sessions#destroy'



  resources :users
end
