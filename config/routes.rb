Rails.application.routes.draw do
  devise_for :users

  root "books#index"

  resources :books, only: [:index, :show] do
    member do
      post :borrow
    end
  end

  resources :borrowings, only: [] do
    member do
      post :return_book
    end
  end

  get "/profile", to: "users#profile", as: "user_profile"
end
