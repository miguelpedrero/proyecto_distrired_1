Rails.application.routes.draw do
  resources :products

  devise_for :users, controllers: { registrations: 'users/registrations'}, path_prefix: 'miguel'
  
  resources :users

  root to: "products#index"

end
