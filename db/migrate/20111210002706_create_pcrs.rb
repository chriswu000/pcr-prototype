class CreatePcrs < ActiveRecord::Migration
  def self.up
    create_table :pcrs do |t|
      t.string :pcr_number

      t.timestamps
    end
  end

  def self.down
    drop_table :pcrs
  end
end
