class AddPortfoliosTable < ActiveRecord::Migration
  def change
  	create_table :portfolios do |t|
  		t.name
  		t.timestamps
  	end
  end
end
