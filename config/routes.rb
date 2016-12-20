Rails.application.routes.draw do
  resources :bulleting_boards
  devise_for :users
  resources :comments
  get 'pages/info'

  root to: redirect('/bulleting_boards')
end