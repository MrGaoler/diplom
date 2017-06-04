Rails.application.routes.draw do
  root 'home#show'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  scope '/' do
    resources :cards

    get '/home', to: 'home#show'
    get '/about', to: 'abouts#show'
    get '/team', to: 'team#show'
    get '/contact', to: 'contacts#show'
    get '/services', to: 'services#show'
    get '/schedule', to: 'schedules#show'
    get '/price_list', to: 'price_lists#show'
  end

  scope '/forum' do
    resources :posts do
      resources :comments
    end
  end

  get '*unmatched_route', to: 'application#render_404'
end
