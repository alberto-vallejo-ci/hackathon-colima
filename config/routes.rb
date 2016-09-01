Rails.application.routes.draw do
  devise_for :admins
  root to: 'registration#show'

  resource :contact, only: :create
  resource :challenge, only: :create
  resource :registration, only: :show, controller: :registration

  namespace :admin, module: :administrator do
    root to: 'home#show'
  end
end
