Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "journals#index"
  resources :users
  resources :posts
  resources:journals
end 
