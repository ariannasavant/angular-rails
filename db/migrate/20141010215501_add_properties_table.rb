class AddPropertiesTable < ActiveRecord::Migration
  def change
  	create_table :properties do |t|
  		t.string :street_address_1
  		t.string :street_address_2
  		t.string :city
  		t.string :state
  		t.string :zipcode
  		t.decimal :latitude
  		t.decimal :longitude
  		t.string :parcel_id
			t.timestamps
  	end
  end
end
