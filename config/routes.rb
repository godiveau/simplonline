Rails.application.routes.draw do

  root 'static#welcome'

  get '/', to: 'static#welcome'


  get 'essais/accueil'

  resource :sessions, only: [:create, :destroy]
  resources :users, only: [:edit, :update, :show]
  resources :qcms do
    resources :questions
  end

  resources :lessons

  resources :exercices do
    resources :essais
  end

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
