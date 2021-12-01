Rails.application.routes.draw do
  # Home page root route
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'

end
