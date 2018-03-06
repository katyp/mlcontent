Rails.application.routes.draw do
  root to: 'pages#index'

  get 'pages/index'
  get 'pages/contact'
  get 'pages/about'

  resources :posts, only: [:show]

  get 'admin/post/:id', to: 'admin#post'
  post 'admin/update_post'
end
