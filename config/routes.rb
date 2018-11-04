Rails.application.routes.draw do
  get "/profile/status", to: 'users#showStatus'
  resources :statuses
  get 'home/index'
  devise_for :hospitals, path: 'hospitals', controllers: { sessions: "hospitals/sessions"}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "/profile/upload", to: 'users#upload'
  get "/profile", to: 'users#show'
  get "/info", to: 'home#info'
end
