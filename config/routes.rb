Rails.application.routes.draw do
  root "welcome#homepage"

  resources :books
  resources :stores

  mount Authoree::Engine, at: "/users"
end
