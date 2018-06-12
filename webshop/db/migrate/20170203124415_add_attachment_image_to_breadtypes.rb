class AddAttachmentImageToBreadtypes < ActiveRecord::Migration
  def self.up
    change_table :breadtypes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :breadtypes, :image
  end
end
