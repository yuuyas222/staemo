Rails.application.routes.draw do


  get 'tops/trend' => "tops#index"
  get 'tops/favorite' => "tops#favorite"
  root "homes#about"

  devise_for :users, controller: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }

  
  resources :users, only: [:index, :edit, :show, :update, :destroy] do
    get "user_top" => "users#top", as: "top"
    resources :frendships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
    get "confirm" => "users#confirm", as: "confirm"
    get "frend" => "frends#index", as: "frend"
    get "frend_best" => "frends#show", as: "best_frend"
  end

    
    resources :emotions do
      resources :comments, only: [:show, :edit, :create, :destroy]
      resource :favorites, only: [:index, :create, :destroy]
    end


 

  



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end

