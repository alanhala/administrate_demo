Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :books

    root to: "users#index"
  end

  root to: 'application#index'

  require 'sidekiq/web'
  mount Sidekiq::Web, at: 'sidekiq'
  mount PgHero::Engine, at: 'pghero'
end
