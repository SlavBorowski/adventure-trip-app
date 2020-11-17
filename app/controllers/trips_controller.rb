class TripsController < ApplicationController
  before_action :authenticate_seller!, except: [:index, :show]
  before_action :set_trip, only: [:show, :destroy, :update, :edit]

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

  def edit
  
  end 
  
  def update
    @trip.address.destroy
    if @trip.update(trip_params)
      
      redirect_to trip_path
    else
      render :edit
    end

  end
  
  def destroy
    @trip.address.destroy
    @trip.destroy
    redirect_to trips_path
  end  


  private

  def trip_params
    params.require(:trip).permit(:title, :duration, :description, :start_date, :end_date, :price, :location, :activity_id, address_attributes: [ :addr1, :addr2, :city, :state, :postcode ])
  end  

  def set_trip
    @trip = Trip.find(params[:id])
  end

end
