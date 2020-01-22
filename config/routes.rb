Rails.application.routes.draw do
  resources :games
  resources :game_rentals do
    resources :reviews, :only => [:create, :index, :new]
  end
  resources :users
end
