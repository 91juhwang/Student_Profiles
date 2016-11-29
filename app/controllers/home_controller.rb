class HomeController < ApplicationController
	def index
		@developers = Student.where(:job_type => "Developer").paginate(:page => params[:page], :per_page => 3)
		@designers = Student.where(:job_type => "Designer").paginate(:page => params[:page], :per_page => 3)
	end
end
