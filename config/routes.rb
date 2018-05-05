Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index]
  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
  root :to => 'posts#index'

  namespace :admin do
    resources :users, only: [:index, :update]
    resources :categories, only: [:index, :create, :edit, :update, :destroy]
    root :to => 'users#index'
  end
end
