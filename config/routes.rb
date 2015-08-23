Rails.application.routes.draw do

  get 'payment/index'

  post 'payment/pay'

	root 'pages#home'

  


	# session routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

  # user routes
  get "/signup", to: "users#new"

  # pages routes
	get 'pages/busAPI'

	resources :users
	resources :sessions
  resources :pages 
	resources :businesses

end

#           Prefix Verb   URI Pattern                 Controller#Action
#   products_index GET    /products/index(.:format)   products#index
#    products_show GET    /products/show(.:format)    products#show
# businesses_index GET    /businesses/index(.:format) businesses#index
#  businesses_show GET    /businesses/show(.:format)  businesses#show
#             root GET    /                           pages#home
#            users GET    /users(.:format)            users#index
#                  POST   /users(.:format)            users#create
#         new_user GET    /users/new(.:format)        users#new
#        edit_user GET    /users/:id/edit(.:format)   users#edit
#             user GET    /users/:id(.:format)        users#show
#                  PATCH  /users/:id(.:format)        users#update
#                  PUT    /users/:id(.:format)        users#update
#                  DELETE /users/:id(.:format)        users#destroy
#            pages GET    /pages(.:format)            pages#index
#                  POST   /pages(.:format)            pages#create
#         new_page GET    /pages/new(.:format)        pages#new
#        edit_page GET    /pages/:id/edit(.:format)   pages#edit
#             page GET    /pages/:id(.:format)        pages#show
#                  PATCH  /pages/:id(.:format)        pages#update
#                  PUT    /pages/:id(.:format)        pages#update
#                  DELETE /pages/:id(.:format)        pages#destroy
