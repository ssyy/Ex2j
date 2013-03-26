class CommentsController < ApplicationController

	def new
		user_id = params[:user_id]
		post_id = params[:post_id]
		@post = Post.find(post_id)
	end

	def show
	end

	def index

		user_id = params[:user_id]
		post_id = params[:post_id]


		@comments = current_user.post.find(post_id).comment.all

		respond_to do |f|
			f.html
			f.json { render :json => @comments }
		end
	# redirect_to "/users/sign_in"

	end

	def create
		
		title   = params[:comment][:title]
		content = params[:comment][:content]
		user_id = params[:user_id]
		post_id = params[:post_id]
		comment = User.find(user_id).post.find(post_id).comment.create(:title=>title,:content=>content)
		comment.save

		respond_to do |f|
			f.html{ redirect_to  }
		end
	end

end
