Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  get 'legal_notices' => 'static_pages#legal_notices'
  get 'team' => 'static_pages#team'
  get 'contact' => 'static_pages#contact'
  get 'concept' => 'static_pages#concept'

  resources :products
  resources :users
  resources :farms
  
  root 'home#index'
end
