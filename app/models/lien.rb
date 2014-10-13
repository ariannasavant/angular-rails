class Lien < ActiveRecord::Base
	belongs_to :property
	has_and_belongs_to_many :portfolios

	def accrued_interest(date = Date.today)
		return (fv * ((interest_rate/12) * months_outstanding(date))).round(2)
	end

	def LTV
		return (rv/total_assessed_value).round(2)
	end

	def months_outstanding(date = Date.today)
		rv_date = Date.new(date.year, date.month, 1) #rv_date is the first of the month in question
		purchase_date = self.purchase_date
		return (rv_date.year - purchase_date.year)*12 + rv_date.month - purchase_date.month
	end

	def penalty
		return (fv * penalty_rate).round(2)
	end

end