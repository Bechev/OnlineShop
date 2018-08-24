class Item < ApplicationRecord
    belongs_to :category
    belongs_to :brand

    def category_name=(name)
        self.category= Category.find_or_create_by(name: name)
    end

    def category_name
        self.category ? self.category.name : nil
    end

     def brand_name=(name)
        self.brand = Brand.find_or_create_by(name: name)
    end

    def brand_name
        self.brand ? self.brand.name : nil
    end

    def self.sold
        where(sold:true)
    end

end