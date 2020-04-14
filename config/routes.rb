Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :words
      resources :children
      resources :users
      post '/login', to: 'sessions#new'
      post '/logout', to: 'sessions#destroy'
      get '/get_current_user', to: 'sessions#get_current_user'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
