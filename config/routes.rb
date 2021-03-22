Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'follows/:id/follower', to: 'follows#show_follower'
  get 'follows/:id/followee', to: 'follows#show_followee'
  get 'users/:id/followers', to: 'users#show_followers'
  get 'users/:id/followees', to: 'users#show_followees'
  get 'users/:id/names', to: 'users#show_names'
  get 'names/:id/namevotes', to: 'names#show_namevotes'
  resources :users, :follows, :names, :namevotes

end
