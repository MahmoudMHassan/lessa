Rails.application.routes.draw do

  get 'comment/create'

  get 'comment/delete'

  get 'comment/index'

  get 'comment/edit'

  root :to => 'posts#index'

 # resources :members
 #  resources :posts
    get 'posts/delete'

  get 'posts/index'


   get 'posts/edit/:id' => 'posts#edit'
  post 'posts/edit/:id' => 'posts#update'

  get '/home' => 'home#home'
 get '/members/show'
 get '/members/add'
 get '/members/create'
 get '/members/login'
 get '/members/:id'=> 'members#show'
  get '/posts/new'
  post 'posts/new' => 'posts#create'
 get '/posts/:id' => 'posts#show'
 get '/members/edit/:id' => 'members#edit'
  
 # get '/members/sign_up'
 
  post '/members/create' => 'members#signup'
  post 'members/edit/:id' => 'members#update'

  get 'login' => 'login#new'
  post 'login' => 'login#login'
  post '/members/add' => 'members#authorize'
  post 'signout' => 'login#logout'
 

   delete 'posts/:id' => 'posts#delete'
   



# The priority is based upon order of creation: first created -> highest priority.
# See how all your routes lay out with "rake routes".

# You can have the root of your site routed with "root"
# root 'welcome#index'

# Example of regular route:
#   get 'products/:id' => 'catalog#view'

# Example of named route that can be invoked with purchase_url(id: product.id)
#   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

# Example resource route (maps HTTP verbs to controller actions automatically):
#   resources :products

# Example resource route with options:
#   resources :products do
#     member do
#       get 'short'
#       post 'toggle'
#     end
#
#     collection do
#       get 'sold'
#     end
#   end

# Example resource route with sub-resources:
#   resources :products do
#     resources :comments, :sales
#     resource :seller
#   end

# Example resource route with more complex sub-resources:
#   resources :products do
#     resources :comments
#     resources :sales do
#       get 'recent', on: :collection
#     end
#   end

# Example resource route with concerns:
#   concern :toggleable do
#     post 'toggle'
#   end
#   resources :posts, concerns: :toggleable
#   resources :photos, concerns: :toggleable

# Example resource route within a namespace:
#   namespace :admin do
#     # Directs /admin/products/* to Admin::ProductsController
#     # (app/controllers/admin/products_controller.rb)
#     resources :products
#   end
end
