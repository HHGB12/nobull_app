Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :websites  
    root to: "users#index"
  end
  root to: "pages#index"
  resources :websites
  
  get 'pages/about'
  get 'pages/index'
  get 'pages/contact'
  get 'pages/reviews'
  get 'pages/custom_projects'
  devise_for :users
end
