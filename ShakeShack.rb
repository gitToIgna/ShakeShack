# Shake Shop

class ShakeShop
	def initialize
		@milkshakes = []
	end

	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end

	def price_of_all_milkshakes
		total_price_of_all_milkshakes = 0

		@milkshakes.each do |milkshake|
			total_price_of_all_milkshakes += milkshake.price_of_milkshake
		end

		puts "El precio de los milkshakes es #{total_price_of_all_milkshakes}€"
	end
end

class MilkShake
	def initialize
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def price_of_milkshake
		total_price_of_milkshake = @base_price

		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end

		total_price_of_milkshake
	end
end

class Ingredient
	attr_accessor :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end
end

banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)

pepe_milkshake = MilkShake.new
pepe_milkshake.add_ingredient(banana)
pepe_milkshake.add_ingredient(chocolate_chips)

maria_milkshake = MilkShake.new
maria_milkshake.add_ingredient(banana)

jose_milkshake = MilkShake.new
jose_milkshake.add_ingredient(chocolate_chips)

all_milkshakes = ShakeShop.new
all_milkshakes.add_milkshake(pepe_milkshake)
all_milkshakes.add_milkshake(maria_milkshake)
all_milkshakes.add_milkshake(jose_milkshake)

puts all_milkshakes.price_of_all_milkshakes