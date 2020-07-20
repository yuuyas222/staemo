Rails.application.routes.draw do


  root "homes#about"

  resources :users, params: :name, path: "/", only: [:edit, :show, :update] do
    get "confirm" => "users#confirm", as: "confirm"
    get "frend" => "frends#index", as: "frend"
    get "frend_best" => "frends#show", as: "best_frend"
  end

  scope :name do    
    resources :emotions do
      resources :comments, only: [:show, :edit, :create, :destroy]
      resource :favorites, only: [:index, :create, :destroy]
    end
  end

  devise_for :users, controller: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }

  



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end

