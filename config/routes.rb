Rails.application.routes.draw do
  get 'home/index'

  #devise_for :users

  devise_for :users , controllers: {registrations: 'registrations'}

 #devise_scope :users do
 #   get    'signin',  to: 'users/sessions#new',     as: :new_admin_session
 #   post   'signin',  to: 'users/sessions#create',  as: :admin_session
 #   delete 'signout', to: 'users/sessions#destroy', as: :destroy_admin_session
 # end

  #devise_for :users do
  #  get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session, via: :get
  #end

  #get '/logout', :to => 'sessions#destroy', via: [:get, :post]

  #get '/sign_out' => 'users/sessions#destroy'

 # devise_for :users do
 #   delete 'logout', to 'sessions#destroy', as :destroy_user_session
  #  get 'login', to: 'sessions#new', as: :new_user_session
 #   put 'login', to: 'sessions#create', as: :user_session
 # end

  #get '/signout' => 'devise/sessions#destroy', :as => :destroy_user_session
 

 # devise_for :users do
 #   get '/users/sign_out' => 'devise/sessions#destroy'
 # end
 # get 'books#index'



  resources :books

  resources :categories

  resources :authors

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # root 'books#index'
  root 'home#index'

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
