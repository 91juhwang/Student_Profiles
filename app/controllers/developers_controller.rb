class DevelopersController < ApplicationController
	def index
		@developers = Student.where(:job_type => "Developer").paginate(:page => params[:page], :per_page => 10)
	end
end
