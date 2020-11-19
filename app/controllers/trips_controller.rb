class TripsController < ApplicationController
  # For any action apart from index and show, ensure authenticated user is logged in
  before_action :authenticate_seller!, except: [:index, :show]
  # For the listed actions below, trip must be set first
  before_action :set_trip, only: [:show, :destroy, :update, :edit]

  # Create list of all trips in table
  def index
      @trips = Trip.all  
  end
  
  # Create a new trip record and build the address which is related to that trip
  def new
    @trip = Trip.new
    @trip.build_address
  end
  
  # Create new trip with given parameters for current user (must be seller, not buyer)
  # If save successful go to index page otherwise show new listing page
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
  
  # Destroy current attached address, the update trip with given params. If image is atatched the got to listing
  # otherwise attach image. If update not successful, display edit page.
  def update
    @trip.address.destroy
    if @trip.update(trip_params)
      if @trip.image.attached?
        redirect_to trip_path
      else
        @trip.image.attach(trip_params[:image])
      end  
    else
      render :edit
    end

  end
  
  #  Delete trip, deleting attached address first
  def destroy
    @trip.address.destroy
    @trip.destroy
    redirect_to trips_path
  end  

  private
  # Ensure that only the paramaters specified are passed, including address attributes for attached address record
  def trip_params
    params.require(:trip).permit(:title, :duration, :description, :start_date, :end_date, :price, :location, :activity_id, :image, address_attributes: [ :addr1, :addr2, :city, :state, :postcode ])
  end  

  # Find trip with id that is passed through params
  def set_trip
    @trip = Trip.find(params[:id])
  end

end
