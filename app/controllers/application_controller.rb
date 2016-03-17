class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :extract_shopping_cart

  protected

  def extract_shopping_cart
    shopping_cart_id = session[:shopping_cart_id]
    @shopping_cart = session[:shopping_cart_id] ? ShoppingCart.find(shopping_cart_id) : ShoppingCart.create
    session[:shopping_cart_id] = @shopping_cart.id
  end

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:nickname, :email, :password, :password_confirmation) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:nickname, :password, :password_confirmation, :current_password, :email, :first_name, :last_name, :address, :zipcode, :city) }
    end
end
