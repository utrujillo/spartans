Rails.application.routes.draw do
  namespace :admin do
    resources :categories
    resources :labels
    resources :home, only: [:index]
    root 'home#index'
  end
  devise_for :users
  get 'themes/tipo'
  get 'themes/buttons'
end
