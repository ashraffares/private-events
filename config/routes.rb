Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :invitations
  resources :events
  devise_for :users 
  root 'events#index'
  get '/creators/info'
end
