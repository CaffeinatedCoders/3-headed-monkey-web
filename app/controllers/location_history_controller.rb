class LocationHistoryController < ApplicationController
  def index
    @devices = current_user.devices
  end

  def show
    @device = Device.find params[:id]
    respond_to do |format|
      format.json {render json: @device.locations}
    end
  end

end
