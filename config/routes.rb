Rails.application.routes.draw do

  devise_for :users

  resources :players, only: :show

  resources :battings, only: :index

  resources :pitchings, only: :index

  root 'battings#index'
end
