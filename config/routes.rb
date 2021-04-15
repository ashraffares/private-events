Rails.application.routes.draw do
  resources :invitations
  resources :events
  devise_for :users 
  root 'events#index'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
