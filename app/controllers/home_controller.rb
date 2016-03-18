class HomeController < ApplicationController
  def index
    @farms = Farm.last(4).reverse
  end
end
