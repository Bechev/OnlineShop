class ItemsController < ApplicationController
    before_action :authentification_required

    def create
        @item = Item.create(item_params)
        
        if (params[:brand_id])
            @brand = Brand.find(params[:brand_id])
        else 
            @brand = Brand.create(name: params[:brand_name])
        end
        redirect_to brand_item_path(@brand,@item)
    end

    def show
        @item = Item.find(params[:id])
    end

    def sold
        @items = Item.sold
    end

    def new
        @brand = Brand.find(params[:brand_id])
        @item = Item.new(brand_id: params[:brand_id])
    end

private 
    def item_params
        params.require(:item).permit(:name, :category_name, :brand_name, :color, :description)
    end

end
