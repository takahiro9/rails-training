Rails.application.routes.draw do
  root to: "user_sessions#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user_sessions, only: [:index, :create, :new, :destroy]
  resources :users, only: [:index, :show]
end
