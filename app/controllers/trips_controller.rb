class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end
  
  def new
    @trip = Trip.new
  end
  
  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to trips_path
    else
      render :new
    end    
  end
  
  def update

  end
  
  def delete

  end  


  private

  def trip_params
    params.require(:trip).permit(:title, :duration, :description, :startdate, :enddate, :price)
  end  

end
