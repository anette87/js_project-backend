Rails.application.routes.draw do
  resources :trips
  resources :plans
  resources :days

  root 'trips#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
