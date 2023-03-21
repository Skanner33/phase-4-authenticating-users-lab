Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/me', to: "users#show"

  post '/login', to: "sessions#create"

  delete '/logout', to: "sessions#destroy"
end
