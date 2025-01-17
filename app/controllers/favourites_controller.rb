class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @car = Car.find(params[:car_id])
    @favourite = Favourite.new(car: @car)
      if @favourite.save
        redirect_to @car, notice: "#{@car.brand} has been added to your garage!"
      else
        redirect_to @car, alert: "There was an error adding this car to your garage."
      end
  end

  def destroy
    @favourite = Favourite.find(params[:id]) # Locate the specific favourite
    @favourite.destroy
    redirect_to favourites_path, notice: "Car removed from garage."
  end

end
