class AddOwnerIdToHouses < ActiveRecord::Migration
  def self.up
    add_column :houses, :owner_id, :integer
  end

  def self.down
    remove_column :houses, :owner_id
  end
end
