class TourGuidesController < ApplicationController
  def index
    @tour_guides = User.where(:usertype => "Tour Guide")
  end

  def show
    @tour_guide = User.find(params[:id])
  end

#  def new
#    @tour_guide = User.new
#  end
#
#  def create
#    @tour_guide = User.new
#    @tour_guide.country_location = params[:country_location]
#    @tour_guide.user_id = params[:user_id]
#    @tour_guide.usertype = params[:usertype]
#    @tour_guide.first_name = params[:first_name]
#    @tour_guide.last_name = params[:last_name]
#    @tour_guide.city_location = params[:city_location]
#    @tour_guide.picture = params[:picture]
#    @tour_guide.description = params[:description]
#
#    if @tour_guide.save
#      redirect_to "/tour_guides", :notice => "Tour guide created successfully."
#    else
#      render 'new'
#    end
#  end

  def edit
    @tour_guide = User.find(params[:id])
  end

  def update
    @tour_guide = User.find(params[:id])

    @tour_guide.country_location = params[:country_location]
    @tour_guide.user_id = params[:user_id]
    @tour_guide.usertype = params[:usertype]
    @tour_guide.first_name = params[:first_name]
    @tour_guide.last_name = params[:last_name]
    @tour_guide.city_location = params[:city_location]
    @tour_guide.picture = params[:picture]
    @tour_guide.description = params[:description]

    if @tour_guide.save
      redirect_to "/tour_guides", :notice => "Tour guide updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tour_guide = User.find(params[:id])

    @tour_guide.destroy

    redirect_to "/tour_guides", :notice => "Tour guide deleted."
  end
end
