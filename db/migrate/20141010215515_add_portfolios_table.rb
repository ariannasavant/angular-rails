class AddPortfoliosTable < ActiveRecord::Migration
  def change
  	create_table :portfolios do |t|
  		t.string :name
  		t.timestamps
  	end
  end
end
