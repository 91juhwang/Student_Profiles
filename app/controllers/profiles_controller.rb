class ProfilesController < ApplicationController
	def index
		@profiles = Profile.all
		@profile = Student.find(current_student.id).profile
	end

	def show
		@profile = Profile.new
	end

	def create
		@profile = Student.find(current_student.id).profile
		@new_profile = Profile.new(profile_params)
		if @profile == nil
			new_profile.save
			redirect_to "/profiles"
		else
			flash[:danger] = "You already have a profile, please update original profile"
			render "index"
		end
	end


	private
	def profile_params
		params.require(:profile).permit(:name, :description, :location, :student_id)
	end

end
