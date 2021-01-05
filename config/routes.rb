Rails.application.routes.draw do
  resources :blogs
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'welcome/index'
  resources :roles
  resources :projects
  resources :employees
  resources :companies
  post '/assign_periods', to: 'employees#assign_projects'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  root 'welcome#index'
end
