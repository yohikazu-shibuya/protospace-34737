Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  #resources :users, only: [:new, :edit, :update, :show]
  resources :prototypes do
    resources :comments, only: [:create, :new, :edit, :update, :show]
  end
  resources :users, only: :show
  #resources :prototypes, only: [:index, :create, :new, :show, :edit, :update, :destroy]
end
