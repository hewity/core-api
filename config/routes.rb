Rails.application.routes.draw do
  get 'links/index'

  get 'comments/index'

  resources :posts
  resources :tags
  resources :links
end
