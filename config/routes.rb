Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'users', to: 'users#index'
  post 'users', to: 'users#create'
  get 'users/new', to: 'users#new'
  get 'users/:id', to: 'users#show'
  post 'tasks', to: 'tasks#create'
  patch 'tasks/:id', to: 'tasks#update'
  put 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks, only: [:show, :create, :edit, :update, :destroy]
end