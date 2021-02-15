Rails.application.routes.draw do
  get 'toppages/index'
  root to: 'tasks#index'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
