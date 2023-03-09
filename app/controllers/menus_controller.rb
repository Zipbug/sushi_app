class MenusController < ApplicationController
  def index
    @location= params[:location_id]
  end

  def new
  end

  def create
    @menu = Menu.new(menu_params) 
    if @menu.save   
      flash[:notice] = 'Menu added!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to add menu!'   
      render :new   
    end 
  end

  def show
    @menu = Menu.find(params[:id])
    @items = Items.where('menu_id = ?', params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
  def menu_params   
    params.permit(:name,:description,:location_id )   
  end   
end
