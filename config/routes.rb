Rails.application.routes.draw do
  root to: 'pages#index'

  get 'pages/index'

  resources :posts, only: [:show]
end
