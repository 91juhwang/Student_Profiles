class ExperiencesController < ApplicationController
	
	def create
		@profile = Profile.find(params[:profile_id])
		@experience = @profile.experiences.create(experience_params)
		redirect_to profile_path(@profile.id)
	end

	def destroy
		@profile = Profile.find(params[:profile_id])
		@experience = @profile.experiences.find(params[:id])
		@experience.destroy
		redirect_to profile_path(@profile.id)
	end

	private
	def experience_params
		start = params[:start]
		end_time = params[:end]
		start = Date.civil(start["date(1i)"].to_i, start["date(2i)"].to_i, start["date(3i"].to_i)
		params.require(:experience).permit(:title, :company, :description, start, :end, :profile_id)
	end

end
