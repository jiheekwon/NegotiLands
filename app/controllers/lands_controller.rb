class LandsController < ApplicationController
  def new
    @land = Land.new
  end
  
  def create
    @land = Land.new(land_params)
    @land.save
  end

  private
  def land_params
   params.require(:land).permit(:image, :platform_id, :location_x, :location_y, :fee_num,
                                :fee_mdy_id, :term_num, :term_mdy_id).merge(user_id: current_user.id)
  end
end
