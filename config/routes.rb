Rails.application.routes.draw do
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "pages#home"

  resources :charges

  resources :purchases, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
