Rails.application.routes.draw do
  devise_for :users
  resources :dashboards, except: :index
  resources :players, only: :show
  root 'dashboards#index'
end
