Rails.application.routes.draw do
  get 'trucks/index'
  get 'trucks/show'
  get 'trucks/edit'
  get 'trucks/new'
  root to: 'pages#home'
  resources :trucks
  resources :bookings, only: [:create]
  resources :reviews, only: [:create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
