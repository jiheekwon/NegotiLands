class LandsController < ApplicationController

  def top
  end

  def index
  end

  def show
    @land = Land.find(params[:id])
  end

  def new
    @land = Land.new
  end
  
  def create
    @land = Land.new(land_params)
    if @land.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @land = Land.find(params[:id])
  end

  def update
    @land = Land.find(params[:id])
    if @land.update(land_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @land = Land.find(params[:id])
    @land.destroy
    redirect_to root_path
  end

  private
  def land_params
   params.require(:land).permit(:image, :platform_id, :location_x, :location_y, :fee_num,
                                :fee_mdy_id, :term_num, :term_mdy_id).merge(user_id: current_user.id)
  end
end
