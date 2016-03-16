Rails.application.routes.draw do
  get 'static_pages/legal_notices'
  get 'static_pages/team'
  get 'static_pages/contact'
  get 'static_pages/concept'

  resources :products
  resources :users
  resources :farms
  
  root 'home_controller#index'
end
