class Ingredient < ApplicationRecord
	has_many :toppings
	has_many :sandwiches, :through => :toppings
	has_attached_file :image, styles: { large: "600x600>", medium: "400x400>", thumb: "32x32#" } 
	  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
