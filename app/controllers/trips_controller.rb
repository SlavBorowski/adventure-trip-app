class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end
  
  def new
    @trip = Trip.new
  end
  
  def create
    @trip = Trip.new
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

end
