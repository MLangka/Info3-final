Rails.application.routes.draw do
  resources :breadtypes
  resources :comments
  get 'pages/home'

  get 'pages/about'

  get 'pages/admin'

  resources :sandwiches
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
