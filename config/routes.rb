Rails.application.routes.draw do

  root 'products#home'

  resources :products
end
