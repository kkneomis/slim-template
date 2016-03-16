Rails.application.routes.draw do
  resources :testjsons

  get 'pages/login'

  get 'pages/signup'

  get 'pages/profile'

  get 'pages/list_spaces'

  get 'pages/datesearch'

  get 'pages/detail'

  get 'pages/booking'

  get 'pages/booking_history'

  get 'pages/client_signup'

  get 'pages/create_space'

  get 'pages/payment'

  get 'pages/onsite_home'

  get 'pages/onsite_spacedetail'

  get 'pages/onsite_createspace'

  get 'pages/onsite_booking'

  get 'pages/onsite_booking_history'

  get 'pages/get_events'

  root 'pages#home'

  resources :items
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'items#index'

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
