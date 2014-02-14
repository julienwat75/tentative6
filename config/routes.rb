MyApp::Application.routes.draw do


  get "password_resets/create"
  get "password_resets/edit"
  get "password_resets/update"
  resources :profils
  resources :mailgenerals
  resources :offres
   resources :pagemembres
   resources :invitations
   resources :pageinvitations 
    resources :webmasters
    resources :reservations 
    resources :detailresas
    resources :welcome
    resources :password_resets


   resources :authors do
  resources :commentaires
  resources :reservations 
 end


   resources :author_sessions, only: [ :new, :create, :destroy ]

   get 'login'  => 'author_sessions#new'
   get 'logout' => 'author_sessions#destroy'
  
  get "pages/forgot_password"
  get "pages/nondisponible"
  get "pages/contact"
  get "pages/fonctionnement"
  get "pages/limite"
  get "pages/confirmation"
  get "pages/epuise"
  get "welcome/index"
  get "welcome/help"
  get "welcome/inscription"

  get "webmasters/statut"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
