class BridgeController < ApplicationController

  def marketing
    @promocodes = Promocode.all.order("created_at DESC")
  end

end
