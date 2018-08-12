class ItemsController < ApplicationController

    def create
        @item = Item.create(item_params)
        redirect_to item_path(@item)
    end

    def show
        @item = Item.find(params[:id])
    end


private 
    def item_params
        params.require(:item).permit(:name, :category_name, :brand_name, :color, :description)
    end

end
