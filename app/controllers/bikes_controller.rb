class BikesController < ApplicationController

	def new
		@bike = Bike.new
	end
	
	def create
		@bike = current_user.bikes.new(bike_params)
	
		if @bike.save
			redirect_to bike_path(@bike)
		else
			p @bike.errors.full_messages
			flash[:error] = "We couldn't create your bike record"
			render :new
		end

	end

	def update
	end

	def destroy
	end

	def edit
	end

	private

	def bike_params
		params.require(:bike).permit(:description)
	end

end
