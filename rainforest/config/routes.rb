Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'

  resources :customers, :except => [:destroy] 
  resources :products 
  resources :reviews
end
