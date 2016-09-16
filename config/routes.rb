Rails.application.routes.draw do
  devise_for :admins
  root to: 'home#show'

  resource :contact, only: :create
  resource :challenge, only: :create
  resource :registration, only: :show, controller: :registration

  namespace :admin, module: :administrator do
    root to: 'challenges#index'

    resources :challenges
  end
end
