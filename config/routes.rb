Rails.application.routes.draw do
  devise_for :users
  resources :lands, only: [:new, :create]
end
