Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "profile", to: "pages#profile"
  get "categories", to: "services#categories"

  resources :services, only: %i[index new create show edit] do
    collection do
      get "categories"
    end
    resources :bookings, only: %i[create edit update]
  end
  resources :bookings, only: :destroy
end
