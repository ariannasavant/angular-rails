class PortfolioPolicy < ApplicationPolicy


	class Scope < Scope

		def resolve
			if user.admin?
				scope.all 
			else
				# scope.where(user_id: user.id)  the portfolios that the user has created or been shared with
			end
		end

	end
end