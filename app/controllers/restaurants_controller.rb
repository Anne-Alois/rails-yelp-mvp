class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new(params[:name], params[:adress], params[:category])
    @restaurant.save
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end
end
