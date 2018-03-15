Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => "registrations"
  }
  resources :users, only: [:show, :index]
  resources :microposts, only: [:create, :destroy]
  root 'static_pages#home'
  get  '/map',     to: 'static_pages#map' 
  get  '/contact', to: 'static_pages#contact'
  get  '/about', to: 'static_pages#about'
end
