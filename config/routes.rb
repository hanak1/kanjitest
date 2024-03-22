Rails.application.routes.draw do
  devise_for :users

  resources :ktests

  root to: "ktests#index"
end
