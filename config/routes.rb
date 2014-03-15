Rails.application.routes.draw do

  root 'authors#index'

  
  get 'authors/new' => 'authors#new', as: :new_author
  post 'authors/create' => 'authors#create', as: :create_author
  get 'authors/show/:id' => 'authors#show', as: :show_author
  get 'authors/index' => 'authors#index', as: :index_author
  get 'authors/edit/:id' => 'authors#edit', as: :edit_author
  post 'authors/update/:id' => 'authors#update', as: :update_author
  delete 'authors/delete/:id' => 'authors#delete', as: :delete_author
  #get 'authors/find'


  get 'books/new/:id' => 'books#new', as: :new_book
  get 'books/create' => 'books#create', as: :create_book
  get 'books/edit/:id' => 'books#edit', as: :edit_book
  get 'books/update/:id' => 'books#update', as: :update_book
  get 'books/delete/:id' => 'books#delete', as: :delete_book

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
