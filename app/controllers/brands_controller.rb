class BrandsController < ApplicationController
    before_action :authentification_required
    def show
        @brand = Brand.find(params[:id])
        @item = Item.new
    end

    def list
        @brand = Brand.find(params[:id])
        @items = @brand.items
        render json: @items, status: 201 
    end
end
