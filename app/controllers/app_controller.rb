class AppController < ApplicationController
  def index
    @spots = Spot.all
  end
end
