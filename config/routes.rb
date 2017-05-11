Rails.application.routes.draw do
  root 'home#show'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  scope '/' do
    resources :services
    resources :cards

    resource :home, only: :show
    resource :about, only: :show
    resource :team, only: :show
    resource :contact, only: :show
  end

  scope '/forum' do
    resources :posts
  end
end
