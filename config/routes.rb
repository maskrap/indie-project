Rails.application.routes.draw do
  devise_for :users
  root to: 'static_home#home'
  resources :businesses do
    resources :requests
  end
end
