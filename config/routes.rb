Rails.application.routes.draw do

  root 'welcome#index'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/signup', to: 'users#new', as: 'signup'
  resources :users, only: [:create, :show, :edit, :update, :destroy]

  get '/entries/new', to: 'activity_entries#new', as: 'new_entry'
  resources :activity_entries, only: [:create, :edit]

end
