Rails.application.routes.draw do

  resources :items
  root 'products#home'

  resources :products
end
