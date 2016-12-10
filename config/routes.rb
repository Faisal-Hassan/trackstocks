Rails.application.routes.draw do
  resources :user_stocks
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'search', to: 'stocks#search'
  get 'portfolio', to: 'users#portfolio'
  root 'pages#index'
end
