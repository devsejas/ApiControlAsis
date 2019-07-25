Rails.application.routes.draw do
  resources :assistances
  resources :types
  resources :user_roles
  resources :roles
  resources :users
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
