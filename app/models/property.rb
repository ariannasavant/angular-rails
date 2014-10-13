class Property < ActiveRecord::Base
	has_many :liens
	has_many :portfolios, through: :liens
end