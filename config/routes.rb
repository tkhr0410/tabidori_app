Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/map',     to: 'static_pages#map' 
  get  '/contact', to: 'static_pages#contact'
end
