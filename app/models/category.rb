class Category < Application Record
    has_many :items
    has_many :brands, :through => :items
end