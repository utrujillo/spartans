Rails.application.routes.draw do
  namespace :admin do
    resources :categories
    resources :labels
    resources :home, only: [:index]
  end
  devise_for :users
  get 'themes/tipo'
  get 'themes/buttons'
  get 'themes/form'
  get 'themes/hyperlink'
  get 'themes/index'
  # You can have the root of your site routed with "root"
  root 'home#index'
end
