Equity::Application.routes.draw do
  
  get "entry/home"
  get "entry/login"
  get "entry/signup"
  post "entry/authorize"
  
  match 'transactions/com' => 'transactions#com', as: 'com'
  match 'transactions/sec' => 'transactions#sec', as: 'sec'
  match 'transactions/sel' => 'transactions#sel', as: 'sel'
  
  match 'investments/inv_log' => 'investments#inv_log', as: 'inv_log'
  match 'investments/inv_sign' => 'investments#inv_sign', as: 'inv_sign'
  match 'investments/cont' => 'investments#cont', as: 'cont'
  
  match 'admin/error' => 'admin#error', as: 'error'
  match 'admin/logout' => 'admin#logout', as: 'logout'
  match 'admin/home' => 'admin#home', as: 'home'

  resources :requests
  resources :kings
  resources :invitations
  resources :users
  resources :kinds
  resources :transactions
  resources :investments
  resources :securities
  resources :entities
  resources :companies

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
  root :to => "entry#home"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
