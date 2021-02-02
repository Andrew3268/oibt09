class PromocodesController < ApplicationController
  before_action :set_promocode, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index, :hashtags]

  # GET /promocodes
  # GET /promocodes.json
  def index
    @pagy, @promocodes = pagy(Promocode.all.order("created_at DESC"), items: 80)
    set_meta_tags title: 'The best Deals, Coupons, Promocodes on Amazon',
                  site: 'hotdealful',
                  revierse: true,
                  description: 'Find the best deals, coupons, promo codes on Amazon. Do not pay full price!!, save your money with us.',
                  keywords: 'amazondeals, hotdeals, promotion code, coupons ',
                  twitter: {
                    card: "summary",
                    site: "@hotdealful",
                    title: 'The best Deals, Coupons, Promocodes on Amazon',
                    description: 'Find the best deals, coupons, promo codes on Amazon. Do not pay full price!!, save your money with us.',
                    # image: @hotdeal.h_image
                  },
                  og: {
                    title: 'The best Deals, Coupons, Promocodes on Amazon',
                    description: 'Find the best deals, coupons, promo codes on Amazon. Do not pay full price!!, save your money with us.',
                    type: 'website',
                    url: 'www.hotdealful.com',
                    # image: @hotdeal.h_image
                  }
    @categories = Category.all
    if params[:search]
      @search_term = params[:search]
      @promocodes = @promocodes.search_by(@search_term)
    end
  end



  # GET /promocodes/1
  # GET /promocodes/1.json
  def show
    impressionist(@promocode)
    set_meta_tags title: @promocode.code_title,
                  site: 'hotdealful',
                  revierse: true,
                  description: @promocode.code_title,
                  keywords: 'amazondeals, hotdeals, promotion code, coupons ',
                  twitter: {
                    card: "summary",
                    site: "@hotdealful",
                    title: @promocode.code_title,
                    description: @promocode.code_title,
                    image: @promocode.code_image
                  },
                  og: {
                    title: @promocode.code_title,
                    description: @promocode.code_title,
                    type: 'website',
                    url: promocode_url(@promocode),
                    image: @promocode.code_image
                  }
  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @pagy, @promocodes = pagy(tag.promocodes.order("created_at DESC"), items: 80)
    @categories = Category.all
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
      @promocode = Promocode.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def promocode_params
      params.require(:promocode).permit(:code_title, :code_hashtag, :code_link, :code_image, :code_source, :code_rating, 
                                        :code_review_count, :code_icode_price, :code_wacode_price, :code_pct, :code_description, 
                                        :code_spare_01, :code_spare_41, :code_spare_42)
    end
end
