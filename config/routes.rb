Rails.application.routes.draw do
  # GET /about
  get "about-us", to: "about#index", as: :about

  get "sign_up", to: "registrations#new"

  post "sign_up", to: "registrations#create"

  root to: "main#index"
  

  # root "articles#index"
end
