Rails.application.routes.draw do

  # Routes for the Instructor resource:
  # CREATE
  get '/instructors/new',      :controller => 'instructors', :action => 'new',    :as => 'new_instructor'
  post '/instructors',         :controller => 'instructors', :action => 'create', :as => 'instructors'

  # READ
  get '/instructors',          :controller => 'instructors', :action => 'index'
  get '/instructors/:id',      :controller => 'instructors', :action => 'show',   :as => 'instructor'

  # UPDATE
  get '/instructors/:id/edit', :controller => 'instructors', :action => 'edit',   :as => 'edit_instructor'
  patch '/instructors/:id',    :controller => 'instructors', :action => 'update'

  # DELETE
  delete '/instructors/:id',   :controller => 'instructors', :action => 'destroy'
  #------------------------------

  #Routes to Create Movies
  get("/movies/new",    { :controller => "movies", :action => "new_form" })
  get("create_movie",   { :controller => "movies", :action => "create_row"})

  #Routes to Read Movies
  get("/movies/",    { :controller => "movies", :action => "index" })
  get("/movies/:id",   { :controller => "movies", :action => "show"})

  #Routes to Update Movies
  get("/movies/:id/edit",    { :controller => "movies", :action => "edit_form" })
  get("/update_movie/:id",   { :controller => "movies", :action => "update_row"})

  #Routes to Destroy Movies
  get("/delete_movie/",    { :controller => "movies", :action => "destroy" })


  #Routes to Create Directors
  get("/directors/new",    { :controller => "directors", :action => "new_form" })
  get("create_director",   { :controller => "directors", :action => "create_row"})

  #Routes to Read Directors
  get("/directors/",    { :controller => "directors", :action => "index" })
  get("/directors/:id",   { :controller => "directors", :action => "show"})

  #Routes to Update Directors
  get("/directors/:id/edit",    { :controller => "directors", :action => "edit_form" })
  get("/update_director/:id",   { :controller => "directors", :action => "update_row"})

  #Routes to Destroy Directors
  get("/delete_director/",    { :controller => "directors", :action => "destroy" })



  #Routes to Create Actors
  get("/actors/new",    { :controller => "actors", :action => "new_form" })
  get("create_actor",   { :controller => "actors", :action => "create_row"})

  #Routes to Read Actors
  get("/actors/",    { :controller => "actors", :action => "index" })
  get("/actors/:id",   { :controller => "actors", :action => "show"})

  #Routes to Update Actors
  get("/actors/:id/edit",    { :controller => "actors", :action => "edit_form" })
  get("/update_actor/:id",   { :controller => "actors", :action => "update_row"})

  #Routes to Destroy Actors
  get("/delete_actor/",    { :controller => "actors", :action => "destroy" })

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
