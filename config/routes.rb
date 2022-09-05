Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "profile", to: "pages#profile"
  get "categories", to: "services#categories"
  get "users/account", to: "users#show", as: :user

  resources :services, only: %i[index new create show edit] do
    collection do
      get "categories"
    end
    resources :bookings, only: %i[create edit update] do
      resources :reviews, only: %i[create new edit update]
    end
  end
  resources :bookings, only: :destroy
end
