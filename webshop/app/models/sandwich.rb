class Sandwich < ApplicationRecord
	has_many :toppings
	has_many :ingredients, :through => :toppings

	belongs_to :breadtype
end
