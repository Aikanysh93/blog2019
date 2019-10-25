Rails.application.routes.draw do
  resources :users
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'login', to: 'sessions#new', as: :login
  post 'sessions', to: 'sessions#create', as: :session
end
