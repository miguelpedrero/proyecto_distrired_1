Rails.application.routes.draw do
  resources :products

  resources :users
  devise_for :users, controllers: { registrations: 'users/registrations'}
  root to: "products#index"

end
