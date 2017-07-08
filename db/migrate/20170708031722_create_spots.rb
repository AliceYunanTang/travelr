class CreateSpots < ActiveRecord::Migration[5.0]
  def change
    create_table :spots do |t|
      t.string :title
      t.text :description
      t.string :image     
      t.timestamps
    end
  end
end
