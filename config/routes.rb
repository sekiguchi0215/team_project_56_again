Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :texts, only: [:index, :show]
  resources :movies, only: [:index]
  root "texts#index"
end
