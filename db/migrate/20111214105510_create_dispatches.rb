class CreateDispatches < ActiveRecord::Migration
  def self.up
    create_table :dispatches do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :pcr_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dispatches
  end
end
