Rails.application.routes.draw do
  
  root 'static_pages#home'
  # This pattern routes a GET request for the URL /help
  # to the help action in the Static Pages controller
  get  '/help', to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'

  # Add automatically RESTFul actions to operate with Users
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
