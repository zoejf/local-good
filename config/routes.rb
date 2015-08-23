Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

  get "/signup", to: "users#new"

  resources :users

  resources :sessions

  get 'pages/home'

  root 'site#index'

  
end
