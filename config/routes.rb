Rails.application.routes.draw do
  
  devise_for :buyers, path: 'buyers'
  devise_for :sellers, path: 'sellers'
  root to: "trips#index"
  
  resources :trips, only: [:index, :new, :create, :show, :update, :delete]
end
