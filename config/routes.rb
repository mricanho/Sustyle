Rails.application.routes.draw do
  resources :categories, only: %i[show new create index]
  devise_for :users, :controllers => { registrations: 'registrations', sessions: 'users/sessions'}
  # Two factor add
  devise_scope :user do
    scope :users, as: :users do
      post 'pre_otp', to: 'users/sessions#pre_otp'
    end
  end

  resource :two_factor

  # end

  resources :articles, only: %i[new create destroy show index edit] do 
    resources :votes, only: %i[create destroy]
  end
  
  root 'categories#index'
end
