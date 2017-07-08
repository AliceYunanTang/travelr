class CreatePostcodes < ActiveRecord::Migration[5.0]
  def change
    create_table :postcodes do |t|
      t.string :postcode
      t.string :country

      t.timestamps
    end
  end
end
