class TripsController < ApplicationController
  before_action :authenticate_seller!, except: [:index]

  def index
    @trips = Trip.all
  end
  
  def new
    @trip = Trip.new
    @trip.build_address
  end
  
  def create
    @trip = current_seller.trips.new(trip_params)
    if @trip.save
      redirect_to trips_path
    else
      render :new
    end    
  end

  def show

  end  
  
  def update

  end
  
  def delete

  end  


  private

  def trip_params
    params.require(:trip).permit(:title, :duration, :description, :start_date, :end_date, :price, :activity_id, address_attributes: [ :addr1, :addr2, :city, :state, :postcode ])
  end  

end
