Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books

  root 'home#top'
  get 'home/about'

  resources :books, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
	end
end

