class PlatformsController < ApplicationController
  def decentraland
  end

  def thesandbox
    @lands = Land.where(platform_id: 3)
  end

  def cryptovoxels
  end

  def somuniumspace
  end

end
