Rails.application.routes.draw do
  resources :dashboards
  root 'dashboards#index'
end
