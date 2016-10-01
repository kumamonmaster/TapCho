Rails.application.routes.draw do
  root 'banks#index'
  devise_for :users
  resource :user, only: [:show] do
    resources :banks do
      resources :monies, only: [:show, :destroy]
      collection do
        get :countup
      end
    end
  end
end
