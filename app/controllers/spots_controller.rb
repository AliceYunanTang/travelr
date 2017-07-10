class SpotsController < ApplicationController
  def index
  end

  def show
  end

  def create
  end

  def update
  end

  def new
  end

  def edit
  end

  def destroy
      @spot = Spot.find_by id: params[:id]      
  end
end
