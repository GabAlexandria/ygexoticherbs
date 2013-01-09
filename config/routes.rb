Ygexoticherbs::Application.routes.draw do

  resources :mailing_lists, :only => [:create]
  get "/name_and_email" => "mailing_lists#new", :as => "name_and_email"

  #resources :orders, :only => [:new, :create, :edit, :update]
  resources :carts, :only => [:new, :create, :edit, :update] do 
    member do
      get :enter_email
      post :enter_email
      get :confirm_orders
      post :confirm_orders
      get :thanks_for_order
    end
  end


  namespace :admin do
    resources :products
    resources :users
    resources :carts
    resources :orders
  end

  resources :users, :only => [:new, :edit, :create, :update]
  resources :user_sessions
  resources :products, :only => [:index, :show]
  resources :user_email, :only => [:new, :create]


  root :to => "pages#welcome"
  get "/home" => "pages#welcome", :as => "welcome"
  
  get "/contact-us" => "pages#contact_us", :as => "contact_us"

  get "/about-us" => "pages#about_us", :as => "about_us"
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout

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
