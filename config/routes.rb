Rails.application.routes.draw do
  get 'pages/info'

  root to: redirect('/Bulletin_boards')

resources :bulletin_boards1s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
