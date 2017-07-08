class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address_line
      t.string :suburb
      t.string :state
      t.decimal :longitude
      t.decimal :latitude
      t.integer :postcode_id
      t.integer :spot_id
      t.timestamps
    end
  end
end
