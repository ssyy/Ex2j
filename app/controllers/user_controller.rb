class UserController < ApplicationController
  def index
  	if current_user
  		@user = current_user
  	else
  		redirect_to "/users/sign_in"
  	end
  end
end
