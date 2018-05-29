Rails.application.routes.draw do
  resources :friendships
  resources :copies
  resources :lendings
  resources :books
  resources :users

  resources :sessions, only:[:create, :destroy, :new]

  root "copies#index"
  post "/login" => "sessions#create"
  get '/login' => 'sessions#new'
  delete '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
