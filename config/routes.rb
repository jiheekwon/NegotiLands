Rails.application.routes.draw do
  devise_for :users
  root to: "lands#top"
  resources :lands
end
