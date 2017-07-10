class MapsController < ApplicationController

  def index
    @address = Address.all
    @hash = Gmaps4rails.build_markers(@address) do |addr, marker|
        marker.lat addr.latitude
        marker.lng addr.longitude
    end
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
    #   @address = params["address"] ||''

      # @address = Address.where(address_line: ')
      # puts @address
      # @address = Address.first

    #   @address = Address.find_by address_line: @address

      # binding.pry
      # @address.each |address| do
      #   marker.lat address.latitude
      #   marker.lng address.longitude
      #   puts marker.lat
      #   puts marker.lng
      # end

      # @addresses = Address.all
      # @hash = Gmaps4rails.build_markers(@addresses) do |address, marker|
      #

  end

  def new
  end
end
