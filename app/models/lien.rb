class Lien < ActiveRecord::Base
	belongs_to :property
	has_and_belongs_to_many :portfolios
end