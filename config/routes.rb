Rails.application.routes.draw do
  
  devise_for :users
  resources :user_stocks, except: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'search', to: 'stocks#search'
  get 'portfolio', to: 'users#portfolio'
  root 'pages#index'
end
