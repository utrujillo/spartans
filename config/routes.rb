Rails.application.routes.draw do

  namespace :admin do
    resources :categories
    resources :labels
  end

  get 'themes/tipo'
  get 'themes/buttons'

  # You can have the root of your site routed with "root"
  root 'home#index'
end




