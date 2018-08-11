class StaticPagesController < ApplicationController
    def index
        @brands = Brand.all
        @items = Item.all
    end
end
