Rails.application.routes.draw do
  resources :products

  devise_for :users, controllers: { registrations: 'users/registrations'}
  
  resources :users , only: [:index, :new, :edit, :create, :update, :destroy, :show]
  root to: "products#index"

end
