class CreateAccommodations < ActiveRecord::Migration[6.0]
  def change
    create_table :accommodations do |t|
      t.integer :beds
      t.integer :price
      t.text :description
      t.boolean :wifi
      t.text :welcome_message

      t.timestamps
    end
  end
end
