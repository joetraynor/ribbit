Twitter::Application.routes.draw do

  resources :relationships
  resources :ribbits
  resources :sessions
  resources :users
  resources :interactions, :only => [:index]
  get 'interactions_search', to: 'interactions#search', as: 'interactions_search'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'buddies', to: 'users#buddies', as: 'buddies'
  root to: "users#new"

end
