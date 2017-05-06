Rails.application.routes.draw do
  root 'home#index'

  scope '/forum' do
    resources :posts
  end
  devise_for :users
end
