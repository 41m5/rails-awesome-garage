class ReviewsController < ApplicationController
  before_action :set_car

  def index
    @reviews = @car.reviews
  end

  def new
    @review = @car.reviews.new
  end

  def create
    @review = @car.reviews.new(review_params)
    if @review.save
      redirect_to car_path(@car), notice: 'Review created successfully!'
    else
      render :new
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
