Rails.application.routes.draw do
  
  
  resources :services_contents
  resources :about_contents
  resources :integrations
  resource :websites  
  resource :website_contents
  resource :business_details
  namespace :admin do
      resources :users
    root to: "users#index"
  end
  root to: "pages#index"
  
  
  get 'pages/about'
  get 'pages/index'
  get 'pages/contact'
  get 'pages/reviews'
  get 'pages/custom_projects'
  devise_for :users
end
