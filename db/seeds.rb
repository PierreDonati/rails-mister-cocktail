require 'json'
require 'open-uri'

Ingredient.destroy_all

puts "Creating ingredients"
url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
response = open(url).read
results = JSON.parse(response)

results["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end

puts "Finished"





