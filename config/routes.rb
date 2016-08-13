Rails.application.routes.draw do
  devise_for :admins
  root to: 'home#show'

  namespace :admin, module: :administrator do
    root to: 'home#show'
  end
end
