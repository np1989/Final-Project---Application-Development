class TourSightsController < ApplicationController
  def index
    @tour_sights = TourSight.all
  end

  def show
    @tour_sight = TourSight.find(params[:id])
  end

  def new
    @tour_sight = TourSight.new
  end

  def create
    @tour_sight = TourSight.new
    @tour_sight.tour_id = params[:tour_id]
    @tour_sight.sight_id = params[:sight_id]

    if @tour_sight.save
      redirect_to "/tour_sights", :notice => "Tour sight created successfully."
    else
      render 'new'
    end
  end

  def edit
    @tour_sight = TourSight.find(params[:id])
  end

  def update
    @tour_sight = TourSight.find(params[:id])

    @tour_sight.tour_id = params[:tour_id]
    @tour_sight.sight_id = params[:sight_id]

    if @tour_sight.save
      redirect_to "/tour_sights", :notice => "Tour sight updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tour_sight = TourSight.find(params[:id])

    @tour_sight.destroy

    redirect_to "/tour_sights", :notice => "Tour sight deleted."
  end
end
