Rails.application.routes.draw do
  get 'comments/index'

  resources :posts
  resources :tags
  resources :links
end
