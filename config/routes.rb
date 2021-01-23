Rails.application.routes.draw do
  get 'search/index'
  get 'search/create'
  namespace :admin do
    resources :manage, only: [:destroy, :update, :index]
    resources :member, only: [:destroy, :update, :index]
  end

  get '/admin' => 'admin/manage#index'

  devise_for :admin, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations',
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
  }

  root to: 'home#top'

  # get '/boxes/detail/:id' => 'boxes#detail', as: 'box_detail'
  get '/tree/detail/:id' => 'tree#detail', as: 'tree_detail'
  # get '/brakers/detail/:id' => 'brakers#detail', as: 'braker_detail'

  resources :tree, only: [:show, :index]
  resources :boxes
  resources :brakers
  resources :relations
  resources :supplies
  resources :machines
  resources :places
end
