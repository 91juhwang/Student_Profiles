class EducationsController < ApplicationController

	def create
		@profile = Profile.find(params[:profile_id])
		@education = Education.new(education_params)
		if @education.save
			redirect_to profile_path(@profile.id)
		else
			flash[:alert] = "error"
			redirect_to profile_path(@profile.id)
		end
	end

	def update
		
	end

	def destroy
		@profile = Profile.find(params[:profile_id])
		@education = @profile.educations.find(params[:id])
		@education.destroy
		redirect_to profile_path(@profile.id)
	end
	
	private
	def education_params
		params.require(:education).permit(:school, :major, :start, :graduate, :profile_id)
	end
end
