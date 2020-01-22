Rails.application.routes.draw do
  resources :games
  resources :game_rentals
  resources :reviews
  resources :users
end
