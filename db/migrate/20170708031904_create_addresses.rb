class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address_line
      t.string :suburb
      t.integer :postcode_id

      t.timestamps
    end
  end
end
