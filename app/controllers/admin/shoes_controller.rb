class Admin::ShoesController < ApplicationController
  before_action :set_admin_shoe, only: [:show, :edit, :update, :destroy]

  # GET /admin/shoes
  # GET /admin/shoes.json
  def index
    @shoes = Shoe.all
  end

  # GET /admin/shoes/1
  # GET /admin/shoes/1.json
  def show
  end

  # GET /admin/shoes/new
  def new
    @shoe = Shoe.new
  end

  # GET /admin/shoes/1/edit
  def edit
  end

  # POST /admin/shoes
  # POST /admin/shoes.json
  def create
    @shoe = Shoe.new(admin_shoe_params)

    respond_to do |format|
      if @shoe.save
        format.html { redirect_to [:admin, @shoe], notice: 'Shoe was successfully created.' }
        format.json { render :show, status: :created, location: [:admin, @shoe] }
      else
        format.html { render :new }
        format.json { render json: @shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/shoes/1
  # PATCH/PUT /admin/shoes/1.json
  def update
    respond_to do |format|
      if @shoe.update(admin_shoe_params)
        format.html { redirect_to [:admin, @shoe], notice: 'Shoe was successfully updated.' }
        format.json { render :show, status: :ok, location: [:admin, @shoe] }
      else
        format.html { render :edit }
        format.json { render json: @shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/shoes/1
  # DELETE /admin/shoes/1.json
  def destroy
    @shoe.destroy
    respond_to do |format|
      format.html { redirect_to admin_shoes_url, notice: 'Shoe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_shoe
      @shoe = Shoe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_shoe_params
      params.require(:shoe).permit(:title, :description)
    end
end
