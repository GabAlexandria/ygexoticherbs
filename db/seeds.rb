# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create!(:name => "Ground Fennel",
                :scientific_name => "Foenuculum Vulgare",
                :slug => "ground-fennel",
                :price => 80,
                :quantity => 5,
                :packaging_type => "1 lb Pack",
                :description => "Aromatic flavor when cooked in broth, and used as spice to flavor dishes. The licorice like fragrant gives numerous dishes like fish, salads, soups, vegetable dishes, rice dishes, cheeses dressings, sausages, meat dishes, breads and apple pie a unique savory flavor.")

Product.create!(:name => "Dill",
                :slug => "dill",
                :scientific_name => "Anethum Graveolens",
                :price => 75,
                :quantity => 3,
                :packaging_type => "1 lb Pack",
                :description => "Sweeter than dried fruit, with a faint aniseed flavor and aroma, that compliments all dishes. Heavily used with cucumber pickling, cakes, breads, and salads.")

Product.create!(:name => 'Ground Ginger',
                :slug => 'ginger',
                :scientific_name => "Zingiber Officinale",
                :price => 27,
                :quantity => 5,
                :packaging_type => "1 lb Pack",
                :description => "Spicy and peppery flavor with, slightly sweet having a pungent and spicy aroma. Used in all culinary dishes and baking including soups, rice, desserts and stir fry, pineapple pork, cous cous salad, cranberry chutney, curry chicken and vegetable ginger bread man.")

Product.create!(:name => 'Whole Cardamom',
                :slug => 'whole-cardamon',
                :scientific_name => "Amomum",
                :price => 95,
                :quantity => 3,
                :packaging_type => '16oz Bottle',
                :description => "Used in soups, stews, purees, rice dishes and pates, also delicious in desserts, rice pudding, fresh fruit salad, ice cream or custard")

Product.create!(:name => "Whole Cloves",
                :slug => 'whole-cloves',
                :scientific_name => "Syzygium Aromaticum",
                :price => 7.59,
                :quantity => 6,
                :packaging_type => '3oz Shaker Bottle',
                :description => "Strong, burning, spicy flavor, enhances taste of chicken and meats, soups, rice, baking, and beverages, main ingredient in sorrel drinks.")

Product.create!(:name => "Barbecue Seasoning",
                :slug => "barbecue-seasoning",
                :price => 12,
                :quantity => 5,
                :packaging_type => '1 lb Pack',
                :description => "A mixture of several herbs, with a pungent, rich aroma.")

Product.create!(:name => "Curry Powder",
                :slug => 'curry-powder',
                :price => 11.5,
                :quantity => 3,
                :packaging_type => '24oz Bottle',
                :description => "Spicy and powerful aroma, while flavoring and enhancing a variety of meat, rice, fish and vegetable dishes across all continents.")

Product.create!(:name => "Tarragon",
                :slug => 'tarragon',
                :price => 910,
                :quantity => 1,
                :packaging_type => '26 lb Pack',
                :description => "Distinct bittersweet and aromatic anise flavored spiced, used in light soups, salads, pickles, relishes, prepared mustards, sauces and also favored in fish, meat, stews,
tomato salads and egg dishes.")

Product.create!(:name => "Botanic Curry Powder",
                :slug => "botanic-currey-powder",
                :price => 12.5,
                :quantity => 5,
                :packaging_type => '24oz Bottle',
                :description => "Spicy and powerful aroma, while flavoring and enhancing a variety of meat, rice, fish and vegetable dishes across all continents.")

admin = User.create!(:username => "ygadmin", :email => "ygadmin@test.com", :password => "password", :password_confirmation => "password")
admin.update_attribute(:admin, true)
