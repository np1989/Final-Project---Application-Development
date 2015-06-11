class ToursController < ApplicationController
  def index
    @tour_guide = User.all
    @q = Tour.ransack(params[:q])
    @tour = @q.result

  end

  def show
    @tour = Tour.find(params[:id])
    @sights = Sight.all
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
    @tour.picture = params[:picture]

    if @tour.save
      redirect_to "/tours", :notice => "Tour created successfully."
    else
      render 'new'
    end
  end

  def edit
        @tour = Tour.find(params[:id])

    if current_user.id == @tour.user_id

    @countries = Country.all
    else
        @q = Tour.ransack(params[:q])
    @tour = @q.result

      redirect_to "/tours", :notice => "Only the Tour Guide can edit that Tour."

    end
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
    @tour.picture = params[:picture]

    if @tour.save
      redirect_to "/tours", :notice => "Tour updated successfully."
    else
      render 'edit'
    end


  end

  def destroy
    @tour = Tour.find(params[:id])

    if current_user.id == @tour.user_id

    @tour.destroy

    redirect_to "/tours", :notice => "Tour deleted."
  else
        @q = Tour.ransack(params[:q])
    @tour = @q.result

      redirect_to "/tours", :notice => "Only the Tour Guide can delete that Tour."

    end

  end
end
