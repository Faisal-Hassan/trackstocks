Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'portfolio', to: 'users#portfolio'
  root 'pages#index'
end
