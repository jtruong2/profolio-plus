Rails.application.routes.draw do
  root to: 'sessions#new'

  resources :users do
    get '/profile/new', to: 'profile#new'
    get '/profiles', to: 'profile#index'
    post '/profiles', to: 'profile#create'
    delete '/profiles/:id', as: 'delete_profile', to: 'profile#destroy'
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
