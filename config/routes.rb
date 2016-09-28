Rails.application.routes.draw do
  root 'banks#index'
  devise_for :users
  resource :users, only: [:show] do
    resources :banks
  end
end
