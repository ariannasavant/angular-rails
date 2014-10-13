class Portfolio < ActiveRecord::Base
	has_and_belongs_to_many :liens
	has_many :properties, through: :liens

	def total(field_as_sym)
		return liens.pluck(field_as_sym).reduce(:+)
	end

	def avg(field_as_sym)
		return liens.average(field_as_sym).round(2)
	end

	def min(field_as_sym)
		return liens.minimum(field_as_sym).round(2)
	end

	def max(field_as_sym)
		return liens.maximum(field_as_sym).round(2)
	end

	def total_accrued_interest(date = Date.today)
		return liens.map { |l| l.accrued_interest(date) }.reduce(:+)
	end

	def interest_rate_distribution(options={})
		
	end

end