class ItemsController < ApplicationController
    before_action :authentification_required

    def create
        @item = Item.create(item_params)
        
        if (params[:brand_id])
            @brand = Brand.find(params[:brand_id])
        else 
            @brand = Brand.create(name: params[:brand_name])
        end

        render json: @item, status: 201

    end

    def show
        @item = Item.find(params[:id])
    end

    def sold
        @items = Item.sold
        render json: @items, status: 201
    end

    def new
        if(params[:brand_id])
            @brand = Brand.find(params[:brand_id])
        else
            @category = Category.find(params[:category_id])
        end
        @item = Item.new(brand_id: params[:brand_id])
    end

private 
    def item_params
        params.require(:item).permit(:name, :category_name, :brand_name, :color, :description)
    end

end
