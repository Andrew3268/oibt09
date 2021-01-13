class PromocodesController < ApplicationController
  before_action :set_promocode, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /promocodes
  # GET /promocodes.json
  def index
    @promocodes = Promocode.all.order("created_at DESC")
  end

  # GET /promocodes/1
  # GET /promocodes/1.json
  def show
  end

  # GET /promocodes/new
  def new
    @promocode = Promocode.new
  end

  # GET /promocodes/1/edit
  def edit
  end

  # POST /promocodes
  # POST /promocodes.json
  def create
    @promocode = Promocode.new(promocode_params)
    @promocode.user = current_user
    respond_to do |format|
      if @promocode.save
        format.html { redirect_to @promocode, notice: 'Promocode was successfully created.' }
        format.json { render :show, status: :created, location: @promocode }
      else
        format.html { render :new }
        format.json { render json: @promocode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promocodes/1
  # PATCH/PUT /promocodes/1.json
  def update
    respond_to do |format|
      if @promocode.update(promocode_params)
        format.html { redirect_to @promocode, notice: 'Promocode was successfully updated.' }
        format.json { render :show, status: :ok, location: @promocode }
      else
        format.html { render :edit }
        format.json { render json: @promocode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promocodes/1
  # DELETE /promocodes/1.json
  def destroy
    @promocode.destroy
    respond_to do |format|
      format.html { redirect_to promocodes_url, notice: 'Promocode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promocode
      @promocode = Promocode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def promocode_params
      params.require(:promocode).permit(:code_title, :code_hashtag, :code_link, :code_image, :code_source, :code_rating, :code_review_count, :code_icode_price, :code_wacode_price, :code_pct, :code_description, :code_spare_01)
    end
end
