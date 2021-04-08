Rails.application.routes.draw do
  resources :events
  devise_for :users
  root 'events#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
