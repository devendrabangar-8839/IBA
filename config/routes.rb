Rails.application.routes.draw do
  root "sessions#new"
  post 'login', :to => 'sessions#create'
  get 'logout', :to => 'sessions#destroy'
  resources "users"

end
