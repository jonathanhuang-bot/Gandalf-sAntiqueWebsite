Rails.application.routes.draw do
  # Homepage
  root 'categories#index'

  # Public routes
  resources :categories, only: [:index, :show]
  resources :items, only: [:index, :show]

  # Admin routes
  namespace :admin do
    resources :items
    resources :categories
    root 'items#index'
  end
end
