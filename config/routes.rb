# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'home#show'
  resources :tools
  resources :home, only: [:show]
end
