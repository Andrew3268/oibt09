class BridgeController < ApplicationController

  def marketing
    @promocodes = Promocode.all.order("created_at DESC").limit(30)
  end

  def posting
    @promocodes = Promocode.all.order("created_at DESC").limit(75)
  end

  def withpromocode
    @pagy, @promocodes = pagy(Promocode.all.order("created_at DESC"), items: 80)
    @categories = Category.all
  end

  def withcoupon
    @pagy, @promocodes = pagy(Promocode.all.order("created_at DESC"), items: 80)
    @categories = Category.all
  end

end
