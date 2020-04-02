Rails.application.routes.draw do
  root to: "restaurants#index"
  get "restaurants/index", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show", as: "restaurant"
  get "restaurants/:id/new", to: "reviews#new", as: "new_review"
  post "restaurants/:id", to: "reviews#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
