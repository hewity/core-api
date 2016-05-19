Rails.application.routes.draw do
  # Why didn't you use the index action that come from resources?
  get 'tags/index'

  get 'links/index'

  get 'comments/index'
  # Should do 'shallow nesting' to limit actions/routes to only those that have
  # matching controller actions. None of your controllers use all 7 actions
  # provided by resources.
  resources :posts
  resources :tags
  resources :links
  resources :comments
end
