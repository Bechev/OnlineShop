class CategoriesController < ApplicationController
    before_action :authentification_required

    def show
        @category = Category.find(params[:id])
        @item = Item.new
    end
end
