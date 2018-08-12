class ItemsController < ApplicationController

    def create
        @item = Item.create(item_params)
        @brand = Brand.find(params[:brand_id])
        redirect_to brand_item_path(@brand,@item)
    end

    def show
        @item = Item.find(params[:id])
    end


private 
    def item_params
        params.require(:item).permit(:name, :category_name, :brand_name, :color, :description)
    end

end
