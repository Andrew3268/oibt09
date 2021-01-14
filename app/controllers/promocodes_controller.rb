class PromocodesController < ApplicationController
  before_action :set_promocode, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /promocodes
  # GET /promocodes.json
  def index
    @pagy, @promocodes = pagy(Promocode.all.order("created_at DESC"), items: 80)
    set_meta_tags title: 'The Best Deals and Coupons',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Take the best deals and coupons',
                  keywords: 'Amazon, deals, promo codes, coupons',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'The Best Deals and Coupons',
                    description: 'Take the best deals and coupons',
                    # image: @hotdeal.h_image
                  },
                  og: {
                    title: 'The Best Deals and Coupons',
                    description: 'Take the best deals and coupons',
                    type: 'website',
                    url: 'www.ohigottabuythis.net/promocodes',
                    # image: @hotdeal.h_image
                  }
  end



  # GET /promocodes/1
  # GET /promocodes/1.json
  def show
    set_meta_tags title: @promocode.code_title,
                  site: 'Catch Amazon Deals',
                  revierse: true,
                  description: @promocode.code_title,
                  keywords: 'amazondeals hotdeals promocode',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
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
      params.require(:promocode).permit(:code_title, :code_hashtag, :code_link, :code_image, :code_source, :code_rating, :code_review_count, :code_icode_price, :code_wacode_price, :code_pct, :code_description, :code_spare_01)
    end
end
