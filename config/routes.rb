Rails.application.routes.draw do
  resources :movies
  get 'home/index'
  get 'home/about', as: 'about'
  root to: 'home#index'
end
