class HarvestsController < ApplicationController
	def index
		@harvests = Harvest.all
	end
	
	def show
		@harvest = Harvest.find(params[:id])
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

end
