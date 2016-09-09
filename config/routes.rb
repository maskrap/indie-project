Rails.application.routes.draw do
  root to: 'businesses#index'
  resources :businesses
end
