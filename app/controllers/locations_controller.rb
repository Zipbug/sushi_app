class LocationsController < ApplicationController
  def index
    
  end

  def create
    @location = Location.new(location_params) 
    @location.user_id = current_user.id
    if @location.save   
      flash[:notice] = 'Location added!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to add location!'   
      render :new   
    end 
  end


  def show
   
  end

  def edit
    location_params[:user_id] = current_user.id
    @location = Location.find(params[:id])
    @location.update(location_params)
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
  end
  private
  def location_params   
    params.permit(:name,:description,:address,:user_id )   
  end   
end
