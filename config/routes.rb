Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :admin
  resources :users
  resources :category
end
