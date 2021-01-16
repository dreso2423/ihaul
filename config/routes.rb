Rails.application.routes.draw do
  root to: 'pages#home'
  resources :trucks
  resources :bookings, only: [:create]
  resources :reviews, only: [:create]
  end
trucks (index, show, new,create, edit, update
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
