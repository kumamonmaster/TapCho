Rails.application.routes.draw do
  devise_for :users
  resource :users, only: [:show]
end
