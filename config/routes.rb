Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :clinics do
    resources :bookings, only: [:new, :create]
    # TO DO nest the reviews
    resources :reviews, only: [:index, :new, :create]
  end
  resources :bookings, only: [:index]
end
