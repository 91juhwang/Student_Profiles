class ProfilesController < ApplicationController
	def index
		@profiles = Profile.all
	end

	def new
		@profile = Profile.new
	end

	def show
		@profile = Student.find(current_student.id).profile
		@skill = Skill.new
	end

	def create
		@profile = Student.find(current_student.id).profile
		@new_profile = Profile.new(profile_params)
		if @new_profile.save
			redirect_to show
		else
			flash[:danger] = "You already have a profile, please update original profile"
			redirect_to "/profiles/show"
		end
	end

	def update

	end

	private
	def profile_params
		params.require(:profile).permit(:name, :description, :location, :student_id)
	end

end
