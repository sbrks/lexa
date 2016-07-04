class SessionsController < ApplicationController

	def new
		render :new
	end

	def create
	  	user = params.require(:user).permit(:email, :password)
	  	@user = Lawyer.find_by_email(user[:email])
	  	if @user != nil
	  		@user= Lawyer.confirm(user)
	  		user_t = "lawyers"
	  	else
	  		@user = Client.confirm(user)
	  		user_t = "clients"
	  	end

		if @user
			login(@user, user_t)
			redirect_to "/#{user_t}/#{@user.id}"
		else
	    	flash[:error] = 'Invalid email/password combination'

			redirect_to "/signin"
		end
	end

	def destroy
		logout
		redirect_to '/'
	end

end

