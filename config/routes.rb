Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :screenings, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:create]
  end
  
  resources :bookings, only: [:destroy]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html