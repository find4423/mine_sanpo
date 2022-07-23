Rails.application.routes.draw do
  root to: "posts#index"

  devise_for :users 
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :followings, on: :member
    get :followers,  on: :member
  end
  
  resources :posts
  resources :users, only: :show
  resources :actives, only: [:show, :new, :create, :destroy]

end
