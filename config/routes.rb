Blogger::Application.routes.draw do
  resources :articles do
    resources :comments
  end

  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'

  resources :tags

  root to: 'articles#index'
end
