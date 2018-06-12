class Topping < ApplicationRecord
	belongs_to :sandwich
	belongs_to :ingredient
end
