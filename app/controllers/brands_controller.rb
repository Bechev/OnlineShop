class BrandsController < ApplicationController
    def show
        @brand = Brand.find(params[:id])
        @item = @brand.items.new
    end
end
