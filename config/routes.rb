Rails.application.routes.draw do
  root "homes#about"
  get 'tops/trend' => "tops#index"
  get 'tops/favorite' => "tops#favorite"
  devise_for :users, controller: {
    sessions: "users/sessions",
    registrations: "users/registrations",
  }

  resources :users, only: [:index, :edit, :show, :update, :destroy] do
    resource :frendships, only: [:create, :destroy]
    get "user_top" => "users#top", as: "top"
    get "user_favorites" => "users#favorite", as: "favorites"
    get :follows, on: :member
    get :followers, on: :member
    get "confirm" => "users#confirm", as: "confirm"
    get "follower" => "frendships#follower", as: "follower"
    get "following" => "frendships#following", as: "following"
    get "user_index" => "emotions#user_index", as: "emotion_index"
  end

  resources :emotions, only: [:show, :create, :new] do
    resources :comments, only: [:show, :edit, :create, :destroy]
    resource :favorites, only: [:index, :create, :destroy]
  end

  get "search" => "search#search", as: "search"
  get "user_search" => "search#user_search", as: "user_search"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
