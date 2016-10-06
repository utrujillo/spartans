Rails.application.routes.draw do
  namespace :admin do
    resources :categories
    resources :labels
    resources :home, only: [:index]
  end
  devise_for :users
  get 'themes/tipo'
  get 'themes/buttons'
  root 'home#index'
end
