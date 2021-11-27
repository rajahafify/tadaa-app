Rails.application.routes.draw do

  # create routes for talent index as root
  # create resources for talents with talent services
  root 'talents#index'
  resources :talents do
    resources :talent_services
  end
end