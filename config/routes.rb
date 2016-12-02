Rails.application.routes.draw do

  get 'post/index'

  namespace :admin do
    resources :categories
    resources :labels
    resources :posts
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

  resources :posts, only: [:show] do
    resources :comments, only: [:create]
  end
end
