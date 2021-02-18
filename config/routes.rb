Rails.application.routes.draw do
  resources :categories, only: %i[show, new, create]
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :articles, only: %i[new create destroy] do 
    resources :votes, only: %i[create destroy]
  end
  
  root 'articles#index'
end
