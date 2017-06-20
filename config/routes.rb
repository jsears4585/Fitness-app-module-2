Rails.application.routes.draw do

  root 'welcome#index'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/signup', to: 'users#new', as: 'signup'
  resources :users, only: [:create, :show, :edit, :update, :destroy]

  resources :activity_entries

end
