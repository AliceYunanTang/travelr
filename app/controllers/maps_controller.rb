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
    # binding.pry



    elsif params[:street_address].present?
      @address = Address.near(params[:street_address], params[:radius], :units => :km)

    # elsif Address.near(params[:street_address], params[:radius], :units => :km).length === 0?
        # @address = Address.last



    else
      @address = Address.all.limit(20)
    end

    @hash = Gmaps4rails.build_markers(@address) do |addr, marker|
        marker.lat addr.latitude
        marker.lng addr.longitude
        marker.infowindow "<b>#{addr.spot.title}</b><br><p>#{ addr.spot.description }</p><br><img src=\"http://fillmurray.com/100/100\"><a href='/spots/#{addr.spot_id}'>Details Page</a>"
    end
  end

  def new
  end
end
