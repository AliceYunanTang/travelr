class SpotsController < ApplicationController
  before_action :check_if_admin, except: [:show, :index]

  def get_spot
    @spot = Spot.find params["id"]
  end

  def new
    @spot = Spot.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    @spot = Spot.find params["id"]
  end

  def index
    @spots = Spot.all
  end

  def destroy
      @spot = Spot.find_by id: params[:id]      
  end
end
