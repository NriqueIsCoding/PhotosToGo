Rails.application.routes.draw do

  get '/logout' => 'sessions#destroy'
  get '/login' => 'sessions#new'
  get '/signup' => 'signups#new'

  resources :galleries
  root 'sessions#new'

  resources :sessions
  resources :users
  resources :pictures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
