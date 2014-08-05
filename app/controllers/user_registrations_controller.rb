class UserRegistrationsController < Devise::RegistrationsController

   def create
   	 user = User.new(sign_up_params)
   	 if user.save
   	 	  redirect_to new_user_session_path
   	 else
   	 	  render new_user_registration_path
   	 end
   end


  private

	def sign_up_params 
		params.require(:user).permit(:role, :email ,:password , :password_confirmation)
	end
end