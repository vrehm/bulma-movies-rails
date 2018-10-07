Rails.application.routes.draw do
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end
  resources :movies, concerns: :paginatable
  get 'home/index'
  get 'home/about', as: 'about'
  root to: 'home#index'
end
