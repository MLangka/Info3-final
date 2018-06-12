class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.boolean :checkout
      t.timestamps
    end
  end
end
