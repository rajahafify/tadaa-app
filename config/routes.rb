Rails.application.routes.draw do
  devise_for :users
  get 'carts/show'
  get 'cart_items/create'
  get 'cart_items/destroy'
  # create routes for talent index as root
  # create resources for talents with talent services
  root 'home#index'
  resources :talents do
    resources :talent_services
  end
end
