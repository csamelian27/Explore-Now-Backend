Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :experiences
      resources :activities
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
