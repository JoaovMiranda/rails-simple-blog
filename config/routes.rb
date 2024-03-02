Rails.application.routes.draw do
  devise_for :users
  get "/friends", to: "friends#index", as: "friends_index"
  resources :friends

  get "/articles", to: "articles#index", as: "articles_index"
  resources :articles do
    resources :comments
  end

  get "/home/about", to: "home#about", as: "about" # Rota para a página "Sobre"
  root "home#index"
end
