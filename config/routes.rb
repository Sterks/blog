Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts
  resources :pictures, only: [:create, :destroy]
  resources :tags, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
