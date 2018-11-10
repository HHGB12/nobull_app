Rails.application.routes.draw do
  
  
  resources :services_contents, only: [:update, :edit, :show]
  resources :extra_pages, only: [:update, :edit, :show]
  resources :uploads, only: [:update, :edit, :show]
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
  get 'pages/pricing'
  get 'pages/basic'
  get 'pages/fancy'
  get 'pages/custom'
  get 'pages/why-we-hand-code', to: "pages#why_we_hand_code"
  get 'pages/keeping-prices-down', to: "pages#keeping_prices_down"
  get 'pages/referral-program', to: "pages#free_beer"
  get 'pages/free-beer'
  get 'freebeer', to: "pages#free_beer"
  devise_for :users
end
