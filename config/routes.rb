Rails.application.routes.draw do

  resources :formulas
  resources :products
root 'admin/dashboard#index'

  resources :employees
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
