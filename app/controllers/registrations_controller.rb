class RegistrationsController < Devise::RegistrationsController
	def edit
		@student_type = Student.find(current_student.id).student_type
		@job_type = Student.find(current_student.id).job_type
	end

	private
	def sign_up_params
		params.require(:student).permit(:student_type, :job_type, :email, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:student).permit(:student_type, :job_type, :email, :password, :password_confirmation, :current_password)
	end
end

