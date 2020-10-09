# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  resources :sessions
  resources :password_resets
  #resources :log
  match '/log/index' => 'log#index'
  match '/log/:format' => 'log#index'
  root 'sessions#new'

  resources :transactions do
    member do
      get :delete
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
