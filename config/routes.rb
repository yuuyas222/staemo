Rails.application.routes.draw do

  get 'comments/create'
  get 'comments/destroy'
  get 'emotions/index'
  get 'emotions/create'
  get 'emotions/destroy'
  get 'emotions/show'
  get 'emotions/update'
  get 'favorites/index'
  get 'favorites/create'
  get 'favorites/destroy'
  get 'frends/index'
  get 'frends/show'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/confirm'
  get 'users/update'
  get 'homes/about'


  root "homes#about"

  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
