class RestaurantsController < ApplicationController


  def index
    @restaurants = Restaurant.all
  end

  def new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
  end

end
