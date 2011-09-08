Mainspring::Application.routes.draw do
  

  resources :home

  resources :clients do
    
    member do 
      get 'style'
    end

    resources :users
    
    resources :content_assets
    
    resources :videos do
      get 'upload_form' #parent page
      get 'botr_upload_form' #iframe, so that we stay on our domain after video finishes upload and is redirected to botr completion page
      resources :comments

      collection do
        get 'banner'
      end
    end

  end

  #match 'login' => 'users#sign_in'
  #match 'intranet_login' => 'authenticate#intranet_login'
 # match 'logout' => 'authenticate#logout'

  root :to => "home#index"
  devise_for :users, :controllers => {:sessions => 'users/sessions', :registrations => 'users/registrations' } do
    get "login", :to => "users/sessions#new"
    get "register", :to => "users/registrations#new"
    get "logout", :to => "users/sessions#destroy"
  end


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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
