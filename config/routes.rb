Rails.application.routes.draw do
  root "sessions#new"
  post 'login', :to => 'sessions#create'
  get 'logout', :to => 'sessions#destroy'
  get 'new_product', :to => 'products#new'
  post 'bulk_upload', :to => 'products#bulk_upload'
  post 'create_product', :to => 'products#create'
  post 'create_brand_segment', :to => 'brand_segments#create'
  post 'create_brand', :to => 'brands#create'
  get 'products', :to => 'products#index'
  get 'edit_products/:id', :to => 'products#edit'
  get 'delete_products/:id', :to => 'products#destroy'
  resources "users"
  resources "products"

end
