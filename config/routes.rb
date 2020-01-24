Rails.application.routes.draw do
  resources :games
  resources :game_rentals do
    resources :reviews, :only => [:create, :index, :new, :destroy]
  end
  resources :users, except: [:new]
  get "/", to: "application#home", as: "home"
  get '/signup',to: "users#new", as: "new_user"

  #  Session routes
  get '/login',to: "sessions#new", as: "sessions"
  post '/login',to: "sessions#create" 
  
  get '/logout',to: "sessions#destroy"


end
