Rails.application.routes.draw do
  devise_for :users
  root to: "lands#index"
  resources :lands, except: :index
  get "platforms/decentraland" => "platforms#decentraland"
  get "platforms/thesandbox" => "platforms#thesandbox"
  get "platforms/cryptovoxels" => "platforms#cryptovoxels"
  get "platforms/somniumspace" => "platforms#somniumspace"
end
