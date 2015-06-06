Rails.application.routes.draw do
  # Routes for the Tour_guide resource:
  # CREATE
root "sights#index"
devise_for :users

  get "/tour_guides/new", :controller => "tour_guides", :action => "new"
  post "/create_tour_guide", :controller => "tour_guides", :action => "create"

  # READ
  get "/tour_guides", :controller => "tour_guides", :action => "index"
  get "/tour_guides/:id", :controller => "tour_guides", :action => "show"

  # UPDATE
  get "/tour_guides/:id/edit", :controller => "tour_guides", :action => "edit"
  post "/update_tour_guide/:id", :controller => "tour_guides", :action => "update"

  # DELETE
  get "/delete_tour_guide/:id", :controller => "tour_guides", :action => "destroy"
  #------------------------------

  # Routes for the Sight resource:
  # CREATE
  get "/sights/new", :controller => "sights", :action => "new"
  post "/create_sight", :controller => "sights", :action => "create"

  # READ
  get "/sights", :controller => "sights", :action => "index"
  get "/sights/:id", :controller => "sights", :action => "show"

  # UPDATE
  get "/sights/:id/edit", :controller => "sights", :action => "edit"
  post "/update_sight/:id", :controller => "sights", :action => "update"

  # DELETE
  get "/delete_sight/:id", :controller => "sights", :action => "destroy"
  #------------------------------

  # Routes for the Tour resource:
  # CREATE
  get "/tours/new", :controller => "tours", :action => "new"
  post "/create_tour", :controller => "tours", :action => "create"

  # READ
  get "/tours", :controller => "tours", :action => "index"
  get "/tours/:id", :controller => "tours", :action => "show"

  # UPDATE
  get "/tours/:id/edit", :controller => "tours", :action => "edit"
  post "/update_tour/:id", :controller => "tours", :action => "update"

  # DELETE
  get "/delete_tour/:id", :controller => "tours", :action => "destroy"
  #------------------------------

  # Routes for the Tour_sight resource:
  # CREATE
  get "/tour_sights/new", :controller => "tour_sights", :action => "new"
  post "/create_tour_sight", :controller => "tour_sights", :action => "create"

  # READ
  get "/tour_sights", :controller => "tour_sights", :action => "index"
  get "/tour_sights/:id", :controller => "tour_sights", :action => "show"

  # UPDATE
  get "/tour_sights/:id/edit", :controller => "tour_sights", :action => "edit"
  post "/update_tour_sight/:id", :controller => "tour_sights", :action => "update"

  # DELETE
  get "/delete_tour_sight/:id", :controller => "tour_sights", :action => "destroy"
  #------------------------------

  get "/tourit/about", :controller => "tourit", :action => "about"
 # get "/tourit/new_user", :controller => "tourit", :action => "create_user"

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
