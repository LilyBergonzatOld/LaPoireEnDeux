Rails.application.routes.draw do
  resources :product_types
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  get 'legal_notices' => 'static_pages#legal_notices'
  get 'team' => 'static_pages#team'
  get 'contact' => 'static_pages#contact'
  get 'concept' => 'static_pages#concept'
  get 'wip' => 'static_pages#wip'
  get 'users/farms' => 'farms#index', :defaults => { :from_user => true }, as: :user_farms
  get 'farms/new' => 'farms#new', :defaults => { :from_user => true }, as: :farm_new
  get 'farms/list' => 'farms#list', :defaults => { :from_user => true }, as: :farms_list

  get 'farms/:farm_id/products/new' => 'products#new', as: :product_new

  resources :product_types
  resources :products
  resources :users
  resources :farms

  get 'shopping-cart' => 'shopping_cart#index'
  post 'shopping-cart' => 'shopping_cart#set'

  root 'home#index'
end
