Rails.application.routes.draw do
  resources :categories, only: %i[show]
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :articles, only: %i[new create] do 
    resources :votes, only: %i[create destroy]
  end
  
  root 'articles#index'
end
