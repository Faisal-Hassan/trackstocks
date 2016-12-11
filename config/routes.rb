Rails.application.routes.draw do
  
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: [:show]
  resources :friendships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'add_friend', to: 'users#add_friend'
  get 'search_friends', to: 'users#search'
  get 'friends', to: "users#friends" 
  get 'search', to: 'stocks#search'
  get 'portfolio', to: 'users#portfolio'
  root 'pages#index'
end
