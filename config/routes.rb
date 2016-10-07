Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'banks#index'
  devise_for :users
  resource :user, only: [:show] do
    resources :banks do
      resources :monies, only: [:show, :destroy] do
        member do
          post :countup
          post :countdown
        end
      end
    end
  end
end
