Rails.application.routes.draw do
  
  devise_for :buyers
  devise_for :sellers
  root to: "trips#index"
  
  resources :trips, only: [:index, :new, :create, :show, :update, :delete]
end
