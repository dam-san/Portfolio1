Rails.application.routes.draw do
  # get 'boxes/new'
  # get 'boxes/create'
  # get 'boxes/edit'
  # get 'boxes/destroy'
  # get 'boxes/update'
  # get 'boxes/show'
  # get 'boxes/index'
  # get 'box_belongs/new'
  # get 'box_belongs/create'
  # get 'box_belongs/edit'
  # get 'box_belongs/destroy'
  # get 'box_belongs/update'
  # get 'box_belongs/show'
  # get 'box_belongs/index'
  # get 'brakers/new'
  # get 'brakers/create'
  # get 'brakers/edit'
  # get 'brakers/destroy'
  # get 'brakers/update'
  # get 'brakers/show'
  # get 'brakers/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'

  resources :boxes
  resources :brakers
  resources :box_belongs
end
