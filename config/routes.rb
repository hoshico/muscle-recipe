Rails.application.routes.draw do
  devise_for :users
  root to: 'menus#index'
  resources :menus, except: :index do
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: :show
end
