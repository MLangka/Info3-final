class CreateToppings < ActiveRecord::Migration[5.0]
  def change
    create_table :toppings do |t|
      t.belongs_to :sandwich, index: true
      t.belongs_to :ingredient, index: true
      t.timestamps
    end
  end
end
