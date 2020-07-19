Rails.application.routes.draw do


  root "homes#about"

  resources :users, params: :username, path: "/", only: [:edit, :show, :update] do
    get "confirm" => "users#confirm", as: "confirm"
    get "frend" => "frends#index", as: "frend"
    get "frend_best" => "frends#show", as: "best_frend"
    resource :favorite, only: [:index, :create, :destroy]
  end

  scope :username do    
    resources :emotions do
      resources :comments, only: [:show, :edit, :create, :destroy]
    end
  end

  devise_for :users, controller: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }

  



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end

