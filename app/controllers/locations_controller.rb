class LocationsController < ApplicationController
  def index
    
  end

  def create
    location_params[:users_id] = current_user.id
    @location = Location.new(location_params)   
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
    location_params[:users_id] = session[:user_id]
    @location = Location.find(params[:id])
    @location.update(location_params)
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
  end
  private
  def location_params   
    params.permit(:name,:description,:address,:users_id)   
  end   
end
