class BrandsController < ApplicationController
    before_action :authentification_required
    def show
        @brand = Brand.find(params[:id])
        @item = Item.new
        respond_to do |f|
            f.html
            f.json {render json: @brand, status: 201}
        end 
    end

    def list
        @brand = Brand.find(params[:id])
        @items = @brand.items
    end
end
