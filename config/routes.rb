Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :listings, only: %i[index show create] do
    resources :reservations, only: %i[create destroy index show]
    resources :bookings, only: %i[create destroy index show]
    resources :missions, only: %i[create index show]
  end
end
