class StaticPagesController < ApplicationController
    def index
        @categories = Category.all
        @brands = Brand.all
        @items = Item.all
        @item = Item.new
    end
end
