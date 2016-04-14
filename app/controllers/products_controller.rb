# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string
#  price      :float
#  farm_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductsController < ApplicationController
  load_and_authorize_resource

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    if signed_in? && current_user.status =='admin'
      @products = Product.all
    else
      redirect_to root_path
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    @product.build_farm({:id => params[:farm_id]})
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    farm = @product.farm
    @product.destroy
    respond_to do |format|
      if current_user.status=='admin'
        format.html { redirect_to farm, notice: 'Product was successfully destroyed.' }
      else
        format.html { redirect_to farm, notice: 'Product was successfully destroyed.' }
      end
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      puts('---------------------------------')
      puts(params)
      puts('---------------------------------')
      params.require(:product).permit(:name, :price, :description, :product_type_id, :farm_id, :quantite, :bio)
    end
end
