Rails.application.routes.draw do
  #Categories
  get '/categories', to: 'categories#index'
  get '/categories/:id', to: 'categories#show'
  #Items
  get '/items', to: 'items#index'
  get '/items/:id', to: 'items#show'
  #Homepage
  root 'categories#index'

  namespace :admin do
    resources :items
    resources :categories
    root 'items#index'
  end
end
