class DesignersController < ApplicationController
	def index
		@designers = Student.where(:job_type => "Designers").paginate(:page => params[:page], :per_page => 10)
	end
end
