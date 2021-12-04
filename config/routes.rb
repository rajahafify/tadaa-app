Rails.application.routes.draw do
  devise_for :users
  # create routes for talent index as root
  # create resources for talents with talent services
  root 'home#index'
  resources :talents do
    resources :talent_services
  end

  resource :cart, only: [:show]
  resources :cart_items, only: [:create, :destroy]
end
