class HarvestsController < ApplicationController
	def index
		@harvests = Harvest.all
	end
	
	def show
		@harvest = Harvest.find(params[:id])
	end

	def new
		@harvest = Harvest.new
	end

	def create
		@harvest = Harvest.new(harvest_params)

		if @harvest.save
			redirect_to harvests_path, :notice => "Your harvest was saved"
		else
			render "new", :notice => "Your harvest did not save"
		end

	end

	def edit
		@harvest = Harvest.find(params[:id])
	end

	def update
		@harvest = Harvest.find(params[:id])

    	if @harvest.update_attributes(harvest_params)
     	 redirect_to harvests_path, :notice => "The harvest has been updated"
    	else
      		render "edit"
    	end
	end

	def destroy
		@harvest = Harvest.find(params[:id])
    	@harvest.destroy
    	redirect_to harvests_path, :notice => "Your harvest has been deleted"
	end

	def load_resource
    	@harvest = Harvest.find(params[:id])
  	end


  	def harvest_params
    allow = [:harvest, :date, :bagid, :weight, :comment]
    params.require(:harvest).permit(allow)
  	end

end
