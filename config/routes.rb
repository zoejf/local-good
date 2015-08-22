Rails.application.routes.draw do

  get 'products/index'

  get 'products/show'

  get 'businesses/index'

  get 'businesses/show'

	root 'pages#home' 

	resources :users
	
  resources :pages 

end


#     Prefix Verb   URI Pattern               Controller#Action
# pages_home GET    /pages/home(.:format)     pages#home
#      pages GET    /pages(.:format)          pages#index
#            POST   /pages(.:format)          pages#create
#   new_page GET    /pages/new(.:format)      pages#new
#  edit_page GET    /pages/:id/edit(.:format) pages#edit
#       page GET    /pages/:id(.:format)      pages#show
#            PATCH  /pages/:id(.:format)      pages#update
#            PUT    /pages/:id(.:format)      pages#update
#            DELETE /pages/:id(.:format)      pages#destroy