Rails.application.routes.draw do


  get '/admin' => 'manages#top'
  patch 'manages/index'
  get 'manages/user_manage'

devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'boxes#new'

  resources :boxes
  resources :brakers
  resources :relations
  resources :supplies
  resources :machines
  resources :places
end
