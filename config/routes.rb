Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :clinics do
    resources :bookings, only: [:new, :create]
    # TO DO nest the reviews
  end
   resources :bookings, only: [:show, :edit, :update, :destroy]
end
