class PostController < ApplicationController
	
	def index
		if user_signed_in?
			puts request.methods
			@posts = current_user.post.all.sort_by{|x| x.updated_at}
			respond_to do |f|
				f.html
				f.json{ render :json => @posts }
			end
		else
			redirect_to "/users/sign_in"
		end
	end

	def new
		if current_user
			@user = current_user
			@post = current_user.post.new
		else
			redirect_to "/users/sign_in"
		end	
	end

	def edit
		@user = current_user
		@post = current_user.post.find(params[:id])
	end

	def create
		if user_signed_in?
			@user   = User.find(current_user.id)
			title   = params[:post][:title]
			content = params[:post][:content]
			user_id = params[:user_id]
			type_id = params[:post][:ptype]
			ptype	= Type.find(type_id).name
			post = Post.new(:title=>title,:content=>content,:ptype=>ptype,:type_id=>type_id)
			post.user_id = @user.id
			post.save

			respond_to do |f|
				f.html{redirect_to "/post"}
			end
		end
	end

	def show
		if current_user
		 	@post = Post.find(params[:id])
			respond_to do |f|
				f.html
				f.json{ render :json => @post }
			end
		else
			redirect_to "/"
		end
	end

	def update
		@post = Post.find(params[:id])
		respond_to do |format|
			if @post.update_attributes(params[:post])
				format.html { redirect_to "/post", notice: 'post was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: "edit" }
				format.json { render json: @post.errors, status: :unprocessable_entity }
			end
    	end
	end

	def info
		
	end
end
