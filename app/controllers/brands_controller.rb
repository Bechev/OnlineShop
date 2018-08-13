class BrandsController < ApplicationController
    def show
        @brand = Brand.find(params[:id])
        @item = Item.new
    end
end
