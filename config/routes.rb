Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "profile", to: "pages#profile"
  get "categories", to: "services#categories"
  get "users/account", to: "users#show", as: :user
  get "users/account/become_a_provider", to: "users#new_provider"
  get "users/account/provider", to: "users#provider"
  get "users/account/service", to: "users#service"
  get "/bookings/confirmation", to: "bookings#confirm"

  resources :services, only: %i[index new create show edit update] do
    collection do
      get "categories"
    end
    resources :bookings, only: %i[create edit update] do
      resources :reviews, only: %i[create new edit update]
      resources :user_reviews, only: %i[create new edit update]
    end
    resources :favorites, only: %i[create destroy]

  end
  resources :bookings, only: :destroy
  resources :favorites, only: :index
  resources :chatrooms, only:  %i[index new create show] do
  resources :messages, only: :create
  end
end
