Rails.application.routes.draw do
  get 'tags/index'

  get 'links/index'

  get 'comments/index'

  resources :posts
  resources :tags
  resources :links
  resources :comments
end
