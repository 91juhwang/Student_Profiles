class RegistrationsController < Devise::RegistrationsController
	private
	def sign_up_params
		params.require(:student).permit(:student_type, :job_type, :email, :password, :password_confirmation, :current_password)
	end

	def account_update_params
		params.require(:student).permit(:student_type, :job_type, :email, :password, :password_confirmation, :current_password)
	end
end
