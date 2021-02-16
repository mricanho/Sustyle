Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :articles
  
  root 'articles#index'
end
