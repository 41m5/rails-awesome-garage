class CarsController < ApplicationController
  def index
    @cars = Car.all

  end

  def show
    @car = Car.find(params[:id])
    @favourite = Favourite.new
    @review = Review.new
    @reviews = @car.reviews
  end

end
