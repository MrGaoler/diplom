Rails.application.routes.draw do
  resources :services
  resources :cards
  root 'home#show'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  scope '/' do
    resource :home, only: :show
    resource :about, only: :show
    resource :team, only: :show
    resource :contact, only: :show
  end

  scope '/forum' do
    resources :posts
  end

  devise_for :users
end
