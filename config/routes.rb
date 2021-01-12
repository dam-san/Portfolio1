Rails.application.routes.draw do
  
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'boxes#new'

  resources :boxes
  resources :brakers
  resources :relations
  resources :supplies
  resources :machines
  resources :places
end
