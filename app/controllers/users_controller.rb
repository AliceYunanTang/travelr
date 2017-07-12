class UsersController < ApplicationController

  before_action :get_user,       only: [ :show, :edit, :update ]
  before_action :check_if_admin, only: [ :index, :destroy ]

  before_action :check_if_logged_in, only: [ :mixtape_create ]

  def get_user
    @user = User.find params["id"]
  end

  def new
    @user = User.new
    # session["rando"] = Random.rand 100000
  end

  def create
    @user = User.new   user_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @user.image = req['public_id']

    else
      @user.image = "v1499518624/sljlppoeqzc8tmcwylrq.jpg"
    end
    if @user.save
      session[:user_id] = @user.id  # perform login (set session)
      redirect_to user_path(@user.id)   # /users/17
    else
      render :new
    end

  end

  def index
    @users = User.all
  end

  def show
    # catches URLS like /users/:id
    # @user = User.find params["id"]   # now in before_action
  end

  def edit
    # @user = User.find params["id"]   # now in before_action
    redirect_to root_path unless @current_user == @user
  end

  def update
    # @user = User.find params["id"]   # now in before_action
    # redirect_to root_path unless @current_user == @user

    @user = @current_user # makes sure user can only edit their own profile
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @user.image = req['public_id']
    end
    @user.update user_params
    redirect_to user_path( params["id"] )
  end

  def destroy
    User.find( params["id"] ).destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :image, :password, :password_confirmation)
  end

end
