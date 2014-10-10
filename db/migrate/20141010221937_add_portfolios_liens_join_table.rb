class AddPortfoliosLiensJoinTable < ActiveRecord::Migration
  def change
  	create_table :liens_portfolios do |t|
	  	t.references :portfolio
	  	t.references :lien
	  	t.timestamps
	  end
  end
end
