Rails.application.routes.draw do
  
  
  resources :services_contents, only: [:update, :edit, :show]
  resources :about_contents, only: [:update, :edit, :show]
  resources :integrations, only: [:update, :edit, :show]
  resources :business_details, only: [:update, :edit, :show]
  resources :users, only: [:update, :destroy]
  namespace :admin do
      resources :users
    root to: "users#index"
  end
  authenticated :user do
    root to: "pages#dashboard"
  end
  unauthenticated :user do
    root "pages#index"
  end
  
  get 'dashboard', to: "pages#dashboard"
  get 'pages/about'
  get 'pages/index'
  get 'pages/contact'
  get 'pages/reviews'
  get 'pages/custom_projects'
  devise_for :users
end
