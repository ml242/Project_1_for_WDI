GrandSendStation::Application.routes.draw do
  # OPTIMIZE use root to: instead of get '/'

  resources :users do
    resources :climbs
  end

  resources :crags do
    resources :ascends
  end
  
  resources :ascends
  resources :crags

  get '/' => "session#new"
  get '/signup' => "users#new"
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
#== Route Map
# Generated on 23 Oct 2013 09:31
#
#           signup GET    /signup(.:format)                          users#new
#            login GET    /login(.:format)                           session#new
#                  POST   /login(.:format)                           session#create
#      user_climbs GET    /users/:user_id/climbs(.:format)           climbs#index
#                  POST   /users/:user_id/climbs(.:format)           climbs#create
#   new_user_climb GET    /users/:user_id/climbs/new(.:format)       climbs#new
#  edit_user_climb GET    /users/:user_id/climbs/:id/edit(.:format)  climbs#edit
#       user_climb GET    /users/:user_id/climbs/:id(.:format)       climbs#show
#                  PUT    /users/:user_id/climbs/:id(.:format)       climbs#update
#                  DELETE /users/:user_id/climbs/:id(.:format)       climbs#destroy
#            users GET    /users(.:format)                           users#index
#                  POST   /users(.:format)                           users#create
#         new_user GET    /users/new(.:format)                       users#new
#        edit_user GET    /users/:id/edit(.:format)                  users#edit
#             user GET    /users/:id(.:format)                       users#show
#                  PUT    /users/:id(.:format)                       users#update
#                  DELETE /users/:id(.:format)                       users#destroy
#     crag_ascends GET    /crags/:crag_id/ascends(.:format)          ascends#index
#                  POST   /crags/:crag_id/ascends(.:format)          ascends#create
#  new_crag_ascend GET    /crags/:crag_id/ascends/new(.:format)      ascends#new
# edit_crag_ascend GET    /crags/:crag_id/ascends/:id/edit(.:format) ascends#edit
#      crag_ascend GET    /crags/:crag_id/ascends/:id(.:format)      ascends#show
#                  PUT    /crags/:crag_id/ascends/:id(.:format)      ascends#update
#                  DELETE /crags/:crag_id/ascends/:id(.:format)      ascends#destroy
#            crags GET    /crags(.:format)                           crags#index
#                  POST   /crags(.:format)                           crags#create
#         new_crag GET    /crags/new(.:format)                       crags#new
#        edit_crag GET    /crags/:id/edit(.:format)                  crags#edit
#             crag GET    /crags/:id(.:format)                       crags#show
#                  PUT    /crags/:id(.:format)                       crags#update
#                  DELETE /crags/:id(.:format)                       crags#destroy
