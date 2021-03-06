Rails.application.routes.draw do
  get 'sessions/new'

  get 'static_pages/student_portal'

  get 'static_pages/admin_portal'
  get 'static_pages/view_calendar'
  get 'events/create' => "events#create"
  get 'static_pages/add_event'
  get '/events/new' => 'events#new'
  get '/events/edit' => 'events#edit'
  get 'events/edit/:id', to: 'events#edit', as: 'edit_event'
  post '/events/edit/:id', to: 'events#update'
  get 'users/edit/:id', to: 'users#edit', as: 'edit_user'
  post '/users/edit/:id', to: 'users#update'
  delete '/events/:id', to: 'events#destroy'
  post '/volunteers/new', to: 'volunteers#new'
  post '/events', to: 'events#create' 
  post '/volunteers', to: 'volunteers#new' 
  get '/volunteers/new' => 'volunteers#new'
  get 'volunteers/show' => 'volunteers#show'
  get 'volunteers/destroy' => 'volunteers#destroy'
  post 'volunteers/destroy', to: 'volunteers#destroy'
  get 'welcome/index'
  root 'sessions#new'
  get '/users' => 'users#index'
  get '/events/hub' => 'events#hub'
  get '/users/:id' => 'users#show', as: :user
  get '/events' => 'events#index' 
  get '/events/:id' => 'events#show', as: :event
  get '/volunteers' => 'volunteers#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
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
