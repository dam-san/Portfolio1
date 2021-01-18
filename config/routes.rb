Rails.application.routes.draw do



  namespace :admin do
    resources :manage, only: [:destroy, :update, :index]
    resources :member, only: [:destroy, :update, :index]
  end
  
  get '/admin' => 'admin/manage#index'

  root to: 'home#top'

devise_for :admin, controllers: {
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



  resources :boxes
  resources :brakers
  resources :relations
  resources :supplies
  resources :machines
  resources :places
end
