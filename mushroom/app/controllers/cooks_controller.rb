class CooksController < ApplicationController
	
	def index
		@cooks = Cook.all
	end

	def show
		@cook = Cook.find(params[:id])
	end

	def new
		@cook = Cook.new
	end

	def create
		@cook = Cook.new(cook_params)

		if @cook.save
			redirect_to cooks_path, :notice => "Your cook was saved"
		else
			render "new", :notice => "Your cook did not save"
		end
	end

	def edit
		@cook = Cook.find(params[:id])
	end

	def update
		@cook = Cook.find(params[:id])

    	if @cook.update_attributes(cook_params)
     	 redirect_to cooks_path, :notice => "The cook has been updated"
    	else
      		render "edit"
    	end
	end

	def destroy
		@cook = Cook.find(params[:id])
    	@cook.destroy
    	redirect_to cooks_path, :notice => "Your cook has been deleted"
	end

	def load_resource
    	@cook = Cook.find(params[:id])
  	end


  	def cook_params
    allow = [:date, :bagid, :soaktime, :cooktime, :substrate, :spawn]
    params.require(:cook).permit(allow)
  	end

end
