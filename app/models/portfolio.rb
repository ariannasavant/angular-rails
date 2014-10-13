class Portfolio < ActiveRecord::Base
	has_and_belongs_to_many :liens
	has_many :properties, through: :liens

	def average_LTV
		
	end

	def total_current_rv(date = Date.today)
		return liens.pluck(:rv).reduce(:+)
	end

	def total_fv
		return liens.pluck(:fv).reduce(:+)
	end

	def total_accrued_interest(date = Date.today)
		return liens.map { |l| l.accrued_interest(date) }.reduce(:+)
	end
end