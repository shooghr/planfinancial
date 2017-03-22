Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  resources :plans
  devise_for :admins
  devise_for :members
 
end
