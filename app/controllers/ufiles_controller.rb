class UfilesController < ApplicationController
  # GET /ufiles
  # GET /ufiles.json
  def index
    if current_user
    @ufiles = current_user.ufile.all
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @ufiles }
      end
    else
      redirect_to "/users/sign_in"
    end
  end

  # GET /ufiles/1
  # GET /ufiles/1.json
  def show
    @ufile = Ufile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ufile }
    end
  end

  # GET /ufiles/new
  # GET /ufiles/new.json
  def new
    if current_user
        @ufile = Ufile.new
        respond_to do |format|
          format.html # new.html.erb
          format.json { render json: @ufile }
        end
      else
        redirect_to "/users/sign_in"
    end
  end

  # GET /ufiles/1/edit
  def edit
    @ufile = Ufile.find(params[:id])
  end

  # POST /ufiles
  # POST /ufiles.json
  def create
    @ufile          = Ufile.new(params[:ufile])
    @ufile.user_id = current_user.id
    respond_to do |format|
      if @ufile.save
        format.html { redirect_to "/ufiles", notice: 'Ufile was successfully created.' }
        format.json { render json: @ufile, status: :created, location: @ufile }
      else
        format.html { render action: "new" }
        format.json { render json: @ufile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ufiles/1
  # PUT /ufiles/1.json
  def update
    @ufile = Ufile.find(params[:id])

    respond_to do |format|
      if @ufile.update_attributes(params[:ufile])
        format.html { redirect_to @ufile, notice: 'Ufile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ufile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ufiles/1
  # DELETE /ufiles/1.json
  def destroy
    @ufile = Ufile.find(params[:id])
    @ufile.destroy

    respond_to do |format|
      format.html { redirect_to ufiles_url }
      format.json { head :no_content }
    end
  end
end
