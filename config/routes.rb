Rails.application.routes.draw do
  
  #devise_for :buyers, path: 'buyers'
  #devise_for :sellers, path: 'sellers'
  devise_for :buyers, path: 'buyers', controllers: { sessions: "buyers/sessions" }
  devise_for :sellers, path: 'sellers', controllers: { sessions: "sellers/sessions" }
  root to: "trips#index"
  
  resources :trips, only: [:index, :new, :create, :show, :update, :delete]
 
end
