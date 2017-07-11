class SpotsController < ApplicationController

  before_action :get_spot,       only: [ :show, :edit, :update ]
  before_action :check_if_admin, except: [:show, :index]
  def new
    @spot = Spot.new
  end

  def get_spot
    @spot = Spot.find params["id"]
  end

  def show
    @spot = Spot.find params["id"]
  end


  def create
    @spot = Spot.new spot_params

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @spot.image = req['public_id']
    else
      @spot.image = "v1499518624/sljlppoeqzc8tmcwylrq.jpg"
    end

    @spot.user_id = @current_user.id

    if @spot.save
      redirect_to "/spots/#{ @spot.id }"
    end
  end

  def edit
  end

  def update
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @spot.image = req['public_id']
    end
    @spot.update spot_params
    redirect_to spot_path( params["id"] )
  end


  def index
    @spots = Spot.all
  end

  def destroy
    Spot.find( params["id"] ).destroy

    redirect_to "/spots"
  end

  private
  def spot_params
    params.require(:spot).permit(:title, :description)
  end
end
