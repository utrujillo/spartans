Rails.application.routes.draw do
  get 'themes/tipo'
  get 'themes/buttons'

  # You can have the root of your site routed with "root"
  root 'home#index'
end
