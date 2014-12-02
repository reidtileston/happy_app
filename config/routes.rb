Rails.application.routes.draw do
  # Routes for the Response resource:
  # CREATE
  get('/responses/new', { :controller => 'responses', :action => 'new' })
  get('/create_response', { :controller => 'responses', :action => 'create' })

  # READ
  get('/responses', { :controller => 'responses', :action => 'index' })
  get('/responses/:id', { :controller => 'responses', :action => 'show' })

  # UPDATE
  get('/responses/:id/edit', { :controller => 'responses', :action => 'edit' })
  get('/update_response/:id', { :controller => 'responses', :action => 'update' })

  # DELETE
  get('/delete_response/:id', { :controller => 'responses', :action => 'destroy' })
  #------------------------------

  # Routes for the Possibility resource:
  # CREATE
  get('/possibilities/new', { :controller => 'possibilities', :action => 'new' })
  get('/create_possibility', { :controller => 'possibilities', :action => 'create' })

  # READ
  get('/possibilities', { :controller => 'possibilities', :action => 'index' })
  get('/possibilities/:id', { :controller => 'possibilities', :action => 'show' })

  # UPDATE
  get('/possibilities/:id/edit', { :controller => 'possibilities', :action => 'edit' })
  get('/update_possibility/:id', { :controller => 'possibilities', :action => 'update' })

  # DELETE
  get('/delete_possibility/:id', { :controller => 'possibilities', :action => 'destroy' })
  #------------------------------

  # Routes for the Answer resource:
  # CREATE
  get('/answers/new', { :controller => 'answers', :action => 'new' })
  get('/create_answer', { :controller => 'answers', :action => 'create' })

  # READ
  get('/answers', { :controller => 'answers', :action => 'index' })
  get('/answers/:id', { :controller => 'answers', :action => 'show' })

  # UPDATE
  get('/answers/:id/edit', { :controller => 'answers', :action => 'edit' })
  get('/update_answer/:id', { :controller => 'answers', :action => 'update' })

  # DELETE
  get('/delete_answer/:id', { :controller => 'answers', :action => 'destroy' })
  #------------------------------

  # Routes for the Link resource:
  # CREATE
  get('/links/new', { :controller => 'links', :action => 'new' })
  get('/create_link', { :controller => 'links', :action => 'create' })

  # READ
  get('/links', { :controller => 'links', :action => 'index' })
  get('/links/:id', { :controller => 'links', :action => 'show' })

  # UPDATE
  get('/links/:id/edit', { :controller => 'links', :action => 'edit' })
  get('/update_link/:id', { :controller => 'links', :action => 'update' })

  # DELETE
  get('/delete_link/:id', { :controller => 'links', :action => 'destroy' })
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get('/users/new', { :controller => 'users', :action => 'new' })
  get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------

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
