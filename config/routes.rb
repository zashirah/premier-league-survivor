Rails.application.routes.draw do
  resources :picks
  resources :matches, only: [:index, :show, :update]
  resources :teams
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
 
  resources :leagues
  resources :users, only: [:create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/users/:user_id/leagues/:id/schedule', to: 'matches#user_league_schedule'
end
