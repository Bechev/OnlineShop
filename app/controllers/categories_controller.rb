class CategoriesController < ApplicationController

    def show
        @category = Category.find(params[:id])
        @item = Item.new
    end
end
