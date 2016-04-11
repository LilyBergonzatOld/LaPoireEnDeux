class ShoppingCartController < ApplicationController
  load_and_authorize_resource

  def index
    # @shopping_cart.shopping_cart_items.each { |shopping_cart_item|
    #   if shopping_cart_item.item == nil
    #     @shopping_cart.remove(shopping_cart_item, 3)
    #   end
    # }
  end

  def set
    product = Product.find(params[:product_id])
    quantity = 1
    if params.include? :quantity
      quantity = params[:quantity].to_i
    end
    if quantity > 0
      @shopping_cart.add(product, product.price, quantity)
    else
      @shopping_cart.remove(product, quantity.abs)
    end
    redirect_to shopping_cart_path
  end
end
