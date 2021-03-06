Rails.application.routes.draw do
  get 'welcome/index'

  resources :books

  root 'welcome#index'

  # Routes for user
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
