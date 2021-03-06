Rails.application.routes.draw do
  # get "home" =>  "static_pages#home"
  # get "about" =>  "static_pages#about"
  # get "articles/:id" => "articles#show", as: :show_article
  # get "articles" => "articles#index", as: :index_articles
  # post "articles" => "articles#create"
  # delete "articles/:id" =>"articles#destroy" 
  # get "articles/:id/edit" => "articles#edit", as: :edit_articles
  # patch "articles/:id" => "articles#update"
  
  
  
  
  
  
  
  # root 'articles#index'

  # get 'articles/new' => 'articles#new', as: :new_article
  # post 'articles' => 'articles#create'
  # get 'articles/:id' => 'articles#show', as: :article
  # get 'articles' => 'articles#index'
  # get 'articles/:id/edit' => "articles#edit", as: :edit_article
  # patch 'articles/:id' => "articles#update", as: :update_article
  # delete 'articles/:id' => "articles#destroy"
  # get 'hot_articles' => "articles#hot_articles"

  get 'recent' => "articles#recents",as: :recent_article
  resources :articles
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
