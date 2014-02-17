class ToursController < ApplicationController
  def new
  	@tour = Tour.new
  end

  def create
  	@tour = Tour.new(tour_params)
  	if @tour.save
  		redirect_to tours_path
  	else
  		render 'new'
  	end
  end

  def tour_params
  	params.require(:tour).permit(:time, :guide, :size)
  end

  def index
  	@tours = Tour.all
  end

  def show
  end

  def edit
  end
end