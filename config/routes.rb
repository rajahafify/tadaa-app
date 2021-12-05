Rails.application.routes.draw do
  devise_for :users
  # create routes for talent index as root
  # create resources for talents with talent services
  root 'home#index'
  resources :talents do
    resources :talent_services
  end

  resources :carts, only: [:show, :destroy]
  resources :cart_items, only: [:create, :destroy]
end
