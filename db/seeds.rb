# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_list = [
    ["Handbags"],
    ["Small leather goods"],
    ["Belts"],
    ["Shoes"]
]

brand_list = [
    ["Chanel", "Founded by Coco Chanel a while back. It's black, it's pretty."],
    ["Louis Vuitton", "Founded by Louis Vuitton. It's monogram it's a lot of suitcases."],
    ["Hermes", "Founded by a horse rider. It's orange, it's way too expensive."],
    ["Fendi", "It's italian and their bags have eyes... So weird"]
]

item_list = [
    ["Mini Classic", 1, 1],
    ["Hermes Belt", 3, 3],
    ["LV cross body",1,2],
    ["WOC",2 ,1],
    ["Espadrilles", 4,1],
    ["Mules", 4, 3]
]

category_list.each do |name|
    Category.create(name: name)
end

brand_list.each do |name, description|
    Brand.create(name: name, description: description)
end

item_list.each do |name,category_id, brand_id|
    Item.create(name: name, category_id: category_id, brand_id: brand_id)
end
