class SpotsController < ApplicationController
  def index
  end

  def show
      @spot = Spot.find_by id: params[:id]      
  end
end
