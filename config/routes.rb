Rails.application.routes.draw do
  get "/users/:id/status", to: 'users#showStatus'
  resources :statuses
  get 'home/index'
  devise_for :hospitals, path: 'hospitals', controllers: { sessions: "hospitals/sessions"}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "/users/:id", to: 'users#show'


end
