class UserController < ApplicationController
  
  def index
  	if current_user
  		@user = current_user
  	else
  		redirect_to "/users/sign_in"
  	end
  end

  def update
  	@user = current_user
  	@user.update_attributes(params[:user])
  	redirect_to "/user"
  end

  def logout
  	current_user
  end

end
