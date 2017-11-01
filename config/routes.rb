Rails.application.routes.draw do
  get 'home/home'

  resources :users

root 'home#home'
end
