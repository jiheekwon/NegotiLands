class PlatformsController < ApplicationController
  def decentraland
    @lands = Land.where(platform_id: 2)
  end

  def thesandbox
    @lands = Land.where(platform_id: 3)
  end

  def cryptovoxels
    @lands = Land.where(platform_id: 4)
  end

  def somniumspace
    @lands = Land.where(platform_id: 5)
  end

end
