Rails.application.routes.draw do
  root to: "pages#index"
  get 'pages/about'
  get 'pages/index'
  get 'pages/contact'
  get 'pages/reviews'
  get 'pages/custom_projects'
  devise_for :users
end
