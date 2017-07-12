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
    @address = params["address"] ||''
    if params[:address].present?
      @address = Address.where('address_line ILIKE ?', "%#{ params[:address] }%")
    else
      @address = Address.all.limit(4)
    end
    
    @hash = Gmaps4rails.build_markers(@address) do |addr, marker|
        marker.lat addr.latitude
        marker.lng addr.longitude
    end
  end

  def new
  end
end
