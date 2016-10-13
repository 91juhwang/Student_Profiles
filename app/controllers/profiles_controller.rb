class ProfilesController < ApplicationController
	def index
		@profiles = Profile.all
	end

	def new
		@profile = Profile.new
	end

	def show
		@profile = Profile.find(params[:id])
		@skill = Skill.new
	end

	def create
		@profile = Profile.new(profile_params)
		if @profile.save
			redirect_to profile_path(@profile.id)
		else
			flash[:alert] = "You already have a profile, please update original profile"
			redirect_to profile_path(current_student.profile.id)
		end
	end

	def update

	end

	private
	def profile_params
		params.require(:profile).permit(:name, :description, :location, :student_id)
	end

end
