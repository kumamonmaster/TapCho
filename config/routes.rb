Rails.application.routes.draw do
  root 'banks#index'
  devise_for :users
  resource :user, only: [:show] do
    resources :banks
  end
end
