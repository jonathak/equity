Equity::Application.routes.draw do
  
  get "entry/home"
  get "entry/login"
  get "entry/signup"
  post "entry/authorize"
  
  match 'transactions/com' => 'transactions#com', as: 'com'
  match 'transactions/sec' => 'transactions#sec', as: 'sec'
  match 'transactions/sel' => 'transactions#sel', as: 'sel'
  
  match 'entities/liquidity' => 'entities#liquidity', as: 'liquidity'
  match 'entities/liquidity_chart' => 'entities#liquidity_chart', as: 'liquidity_chart'
  match 'entities/percentage' => 'entities#percentage', as: 'percentage'
  match 'entities/percentage_chart' => 'entities#percentage_chart', as: 'percentage_chart'
  
  match 'companies/path_chart' => 'companies#path_chart', as: 'path_chart'
  match 'companies/payout_chart' => 'companies#payout_chart', as: 'payout_chart'
  match 'companies/sec_captable' => 'companies#sec_captable', as: 'sec_captable'
  match 'companies/ent_captable' => 'companies#ent_captable', as: 'ent_captable'
  
  match 'investments/inv_log_e' => 'investments#inv_log_e', as: 'inv_log_e'
  match 'investments/inv_sign_e' => 'investments#inv_sign_e', as: 'inv_sign_e'
  match 'investments/inv_log_c' => 'investments#inv_log_c', as: 'inv_log_c'
  match 'investments/inv_sign_c' => 'investments#inv_sign_c', as: 'inv_sign_c'
  match 'investments/cont' => 'investments#cont', as: 'cont'
  match 'investments/inv_submit_e' => 'investments#inv_submit_e', as: 'inv_submit_e'
  match 'investments/inv_submit_c' => 'investments#inv_submit_c', as: 'inv_submit_c'
  match 'investments/inv_comp_c' => 'investments#inv_comp_c', as: 'inv_comp_c'
  match 'investments/inv_comp_text' => 'investments#inv_comp_text', as: 'inv_comp_text'
  
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
