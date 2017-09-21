Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  resources :dashboards, only: :index
  resources :players, only: :show
  root 'dashboards#index'
end
