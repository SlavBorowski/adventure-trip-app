Rails.application.routes.draw do
  
  root to: "trips#index"
  
  resources :trips
end
