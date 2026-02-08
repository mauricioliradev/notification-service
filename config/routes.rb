Rails.application.routes.draw do
  resources :notifications, only: [:create, :index]
  
  get '/up', to: 'rails/health#show', as: :rails_health_check
end