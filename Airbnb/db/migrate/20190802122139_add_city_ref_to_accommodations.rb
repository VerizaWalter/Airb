class AddCityRefToAccommodations < ActiveRecord::Migration[6.0]
  def change
  	 t.integer :city_id
     t.integer :admin_id
  end
end
