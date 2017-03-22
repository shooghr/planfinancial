Rails.application.routes.draw do
  get 'home/index'

  resources :plans
  devise_for :admins
  devise_for :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
