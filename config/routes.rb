Rails.application.routes.draw do
  root "articles#index"
  resources :articles do
    resources :comments
  end
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # get "up" => "rails/health#show", as: :rails_health_check
end