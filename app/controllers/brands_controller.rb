class BrandsController < ApplicationController
    before_action :authentification_required
    def show
        @brand = Brand.find(params[:id])
        @item = Item.new
    end
end
