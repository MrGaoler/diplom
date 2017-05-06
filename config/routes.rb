Rails.application.routes.draw do
  scope '/forum' do
  resources :posts
  end
  devise_for :users
end
