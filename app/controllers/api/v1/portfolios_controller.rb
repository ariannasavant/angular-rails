class Api::V1::PortfoliosController < ApplicationController
  include Roar::Rails::ControllerAdditions
  respond_to :json


	def index
		# @portfolios = policy_scope(Portfolio)  use this once we set up Pundit with Rolify
		# portfolios = Portfolio.all
		# respond_with
	end

	def show
		portfolio = Portfolio.find(params[:id])
		respond_with portfolio
	end

	def create
		
	end

	def destroy
		
	end

end