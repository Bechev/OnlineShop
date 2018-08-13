class StaticPagesController < ApplicationController
    
  before_action :authentification_required
    
  def index
        @categories = Category.all
        @brands = Brand.all
        @items = Item.all
        @item = Item.new
    end
end
