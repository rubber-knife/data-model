Rails.application.routes.draw do
  resources :images
  resources :media
  resources :meta
  resources :submissions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
