class ProductsTypesController < ApplicationController
  before_action :set_products_type, only: [:show, :edit, :update, :destroy]

  # GET /products_types
  # GET /products_types.json
  def index
    @products_types = ProductsType.all
  end

  # GET /products_types/1
  # GET /products_types/1.json
  def show
  end

  # GET /products_types/new
  def new
    @products_type = ProductsType.new
  end

  # GET /products_types/1/edit
  def edit
  end

  # POST /products_types
  # POST /products_types.json
  def create
    @products_type = ProductsType.new(products_type_params)

    respond_to do |format|
      if @products_type.save
        format.html { redirect_to @products_type, notice: 'Products type was successfully created.' }
        format.json { render :show, status: :created, location: @products_type }
      else
        format.html { render :new }
        format.json { render json: @products_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products_types/1
  # PATCH/PUT /products_types/1.json
  def update
    respond_to do |format|
      if @products_type.update(products_type_params)
        format.html { redirect_to @products_type, notice: 'Products type was successfully updated.' }
        format.json { render :show, status: :ok, location: @products_type }
      else
        format.html { render :edit }
        format.json { render json: @products_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products_types/1
  # DELETE /products_types/1.json
  def destroy
    @products_type.destroy
    respond_to do |format|
      format.html { redirect_to products_types_url, notice: 'Products type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_products_type
      @products_type = ProductsType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def products_type_params
      params.require(:products_type).permit(:name, :code)
    end
end
