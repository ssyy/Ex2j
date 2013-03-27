class FilesController < ApplicationController
  def index
  	if current_user
  		
  	else
  		redirect_to "/user"
  	end
  end
end
