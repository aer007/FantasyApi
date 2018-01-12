Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  get 'news/index'
  get 'news/by_player'
  get 'news/show'

  resources :posts
  root 'games#index'

  get 'games/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
