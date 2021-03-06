class SightsController < ApplicationController
  def index
    @q = Sight.ransack(params[:q])
  @sights = @q.result
  end

  def show
    @sight = Sight.find(params[:id])
  end

  def new
    @sight = Sight.new

  end

  def create

    @sight = Sight.new
    @sight.name = params[:name]

    @sight.country_location = params[:country_location]
    @sight.city_location = params[:city_location]
    @sight.tour_id = params[:tour_id]
    @sight.user_id = params[:user_id]
    @sight.picture = params[:picture]
    @sight.description = params[:description]
    @sight.tour_id = params[:tour_id]

    if @sight.save
      redirect_to "/sights", :notice => "Sight created successfully."
    else
      render 'new'
    end
  end

  def edit
    @sight = Sight.find(params[:id])
  end

  def update
    @sight = Sight.find(params[:id])

    @sight.country_location = params[:country_location]
    @sight.city_location = params[:city_location]
    @sight.tour_id = params[:tour_id]
    @sight.user_id = params[:user_id]
    @sight.picture = params[:picture]
    @sight.tour_sights.tour_id = params[:tour_id]

    if @sight.save
      redirect_to "/sights", :notice => "Sight updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @sight = Sight.find(params[:id])

    @sight.destroy

    redirect_to "/sights", :notice => "Sight deleted."
  end
end
