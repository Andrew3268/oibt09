class BridgeController < ApplicationController

  def marketing
    @promocodes = Promocode.all.order("created_at DESC").limit(20)
  end

end
