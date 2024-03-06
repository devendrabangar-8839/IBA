Rails.application.routes.draw do
  root "sessions#new"
  post 'login', :to => 'sessions#create'
  resources "users"

end
