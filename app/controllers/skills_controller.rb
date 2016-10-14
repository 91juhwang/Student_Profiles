class SkillsController < ApplicationController

	def create
		@profile = Profile.find(params[:profile_id])
		@skill = @profile.skills.create(skill_params)
		redirect_to profile_path(@profile.id)
	end

	def destroy
		@profile = Profile.find(params[:profile_id])
		@skill = @profile.skills.find(params[:id])
		@skill.destroy
		redirect_to profile_path(@profile.id)
	end

	private
	def skill_params
		params.require(:skill).permit(:profile_id, :name)
	end
end
