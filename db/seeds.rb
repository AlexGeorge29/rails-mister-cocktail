# # json parsing DO NOT DELETE
# require 'json'
# require 'open-uri'

# puts 'Cleaning database...'
# Ingredient.destroy_all
# puts 'Creating ingredients...'
# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# drinks_serialized = open(url).read
# db = JSON.parse(drinks_serialized)
# ingredients = db["drinks"]
# # p ingredients
# ingredients.each do |ingredient|
#   # p ingredient["strIngredient1"]
#   Ingredient.create!(name: ingredient["strIngredient1"])
# end
# puts 'Finished!'


# Seed for testing

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")

Cocktail.create(name: "marghritia")
Cocktail.create(name: "cosmo")


mojito = Cocktail.create(name: "mojito")

# Dose.create(
#   description: "pummel at bottom of glass",
#   ingredient_id: mint.id,
#   cocktail_id: mojito.id
# )

new_dose = Dose.new(description: "pummel at bottom of glass")
new_dose.ingredient = mint
new_dose.cocktail = mojito
new_dose.save
