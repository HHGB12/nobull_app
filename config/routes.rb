Rails.application.routes.draw do
  
  
  
  resources :website_contents
  resources :business_details
  namespace :admin do
      resources :users
    root to: "users#index"
  end
  root to: "pages#index"
  resources :websites do
    resource :information
    resource :sitecontents
  end
  
  get 'pages/about'
  get 'pages/index'
  get 'pages/contact'
  get 'pages/reviews'
  get 'pages/custom_projects'
  devise_for :users
end
