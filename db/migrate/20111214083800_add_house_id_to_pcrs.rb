class AddHouseIdToPcrs < ActiveRecord::Migration
  def self.up
    add_column :pcrs, :house_id, :integer
  end

  def self.down
    remove_column :pcrs, :house_id
  end
end
