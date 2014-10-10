class AddLiensTable < ActiveRecord::Migration
  def change
  	create_table :liens do |t|
  		t.references :property
  		t.string :certificate_no
  		t.decimal :rv
  		t.decimal	:fv
  		t.datetime :purchase_date
  		t.datetime :rv_date
  		t.decimal :interest_rate
  		t.decimal :penalty_rate
  		t.decimal :total_assesed_value
  		t.timestamps
  	end
  end
end
