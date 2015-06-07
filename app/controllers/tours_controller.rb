class ToursController < ApplicationController
  def index
    @tour_guide = User.all
@q = Tour.ransack(params[:q])
  @tour = @q.result

  end

  def show
    @tour = Tour.find(params[:id])
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new
    @tour.tour_name = params[:tour_name]
    @tour.starting_location = params[:starting_location]
    @tour.price = params[:price]
    @tour.duration = params[:duration]
    @tour.description = params[:description]
    @tour.user_id = params[:user_id]
    @tour.country_location = params[:country_location]
    @tour.city_location = params[:city_location]

    if @tour.save
      redirect_to "/tours", :notice => "Tour created successfully."
    else
      render 'new'
    end
  end

  def edit
    @tour = Tour.find(params[:id])
    @countries = Country.all
  end

  def update
    @tour = Tour.find(params[:id])

    @tour.tour_name = params[:tour_name]
    @tour.starting_location = params[:starting_location]
    @tour.price = params[:price]
    @tour.duration = params[:duration]
    @tour.description = params[:description]
    @tour.user_id = params[:user_id]
    @tour.country_location = params[:country_location]
    @tour.city_location = params[:city_location]

    if @tour.save
      redirect_to "/tours", :notice => "Tour updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tour = Tour.find(params[:id])

    @tour.destroy

    redirect_to "/tours", :notice => "Tour deleted."
  end
end
