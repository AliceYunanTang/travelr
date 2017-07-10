class MapsController < ApplicationController
  # def initialize
  #   # @address = Address.first;
  #  puts (@address)
  # end

  def index
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  def show



      @add= params["address"] || ""
      @address = Address.find_by(address_line: @add)
      # @addresses = Address.all
      # @hash = Gmaps4rails.build_markers(@addresses) do |address, marker|
      # marker.lat @address.latitude
      # marker.lng @address.longitude

  end



  def new
  end
end
