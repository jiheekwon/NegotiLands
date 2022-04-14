class LandsController < ApplicationController
  before_action :move_to_index, only: [:edit, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

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
      redirect_to land_path(@land)
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

  def move_to_index
    @land = Land.find(params[:id])
    if user_signed_in? && current_user.id != @land.user_id
      redirect_to root_path
    end
  end
end
