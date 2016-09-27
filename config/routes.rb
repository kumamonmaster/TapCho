Rails.application.routes.draw do
  root 'users#show'
  devise_for :users
  resource :users, only: [:show]
end
