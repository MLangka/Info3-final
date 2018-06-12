class CreateSandwiches < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwiches do |t|
      t.belongs_to :breadtype, index: true
      t.timestamps
    end
  end
end
