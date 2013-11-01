Twitter::Application.routes.draw do

  resources :relationships
  resources :ribbits
  resources :sessions
  resources :users
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'buddies', to: 'users#buddies', as: 'buddies'
  get 'interactions', to: 'users#interactions', as: 'interactions'
  root to: "users#new"

end
