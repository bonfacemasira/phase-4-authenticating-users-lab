Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  #authentication
  post "/login", to: "sessions#create"

  #staying logged in
  get "/me", to: "users#show"

  #logging out
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
