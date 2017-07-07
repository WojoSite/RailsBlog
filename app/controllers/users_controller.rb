class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /home
  def home
    puts "\n******* home *******"
    @users = User.all
  end

  # GET /users
  # GET /users.json
  def index
    puts "\n******* index *******"
    @users = User.all
  end

  def login_form
    puts "\n******* login_form *******"
    render :login_form
  end

  def login
  	puts "\n******* signin *******"
      @user = User.where(username: params[:username]).first
  	if @user
  		if @user.password == params[:password]
  			  session[:user_id] = @user.id
          @current_user = get_current_user
          puts "\n******* signin successful *******"
          puts "\ncurrent_user: #{@current_user.inspect}"
  			flash[:notice] = "You've been signed in successfully."
  			redirect_to '/blogfeed'
  		else
  			flash[:notice] = "Please check your password and try again."
  			redirect_to "/login_form"
  		end
  	else
  		flash[:notice] = "Please check your username and try again."
  		redirect_to "/login_form"
  	end
  end

  def logout
    puts "\n****** logout ******"
    session[:user_id] = nil
    flash[:notice] = "You've sucessfully logged out"
    redirect_to '/'
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @posts = Post.all
    @comments = Comment.all
    @comment = Comment.new
    @users = User.all
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to "/blogfeed", notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def get_current_user
      # puts "\n******* get_current_user *******"
      if session[:user_id]
        return User.find(session[:user_id])
      else
        puts "** NO CURRENT USER **"
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      puts "******* user_params *******"
      params.require(:user).permit(:username, :password, :firstname, :lastname, :email, :imgsrc)
    end
end
