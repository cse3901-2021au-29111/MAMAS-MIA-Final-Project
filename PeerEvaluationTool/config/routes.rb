Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # New login session
  get 'sessions/new'

  # Set our root page to our about page
  root 'static_pages#about'

  # Static page routes
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'home' => 'static_pages#home'

  # Signup/Login routes
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # Have our home page be our user page
  post 'users/:id' => 'static_pages#home'

  # Create a new rating when submitted
  post 'ratings' => 'ratings#create'
  
  # Have user resource accessible
  resources :users
end
