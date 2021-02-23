class SitemapController < ApplicationController
    respond_to :xml
  def index
    @promocodes = Promocode.all
  end
end
