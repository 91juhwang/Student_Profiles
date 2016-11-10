class DevelopersController < ApplicationController
	def index
		@developers = Student.sort_by_updated_profile.where(:job_type => "Developer").paginate(:page => params[:page], :per_page => 10)
	end
end
