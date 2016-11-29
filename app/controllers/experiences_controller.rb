class ExperiencesController < ApplicationController
	
	def create
		@profile = Profile.find(params[:profile_id])
		@experience = @profile.experiences.create(experience_params)
		redirect_to profile_path(@profile.id)
	end

	def edit
		@profile = Profile.find(params[:profile_id])
		@experience = @profile.experiences.find(params[:id])
		respond_to do |format|
			format.html { render "profiles/show.html"}
			format.js
		end
	end

	def update
		@profile = Profile.find(params[:profile_id])
		@experience = @profile.experiences.find(params[:id])
		@experience.update(experience_params)
		respond_to do |format|
			format.js
		end
	end

	def destroy
		@profile = Profile.find(params[:profile_id])
		@experience = @profile.experiences.find(params[:id])
		@experience.destroy
		redirect_to profile_path(@profile.id)
	end

	private
	def experience_params
		params.require(:experience).permit(:title, :company, :description, :start, :end, :profile_id)
	end

end
