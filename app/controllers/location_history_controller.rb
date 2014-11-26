class LocationHistoryController < ApplicationController
  before_action :authenticate_user!

  def index
    @devices = current_user.devices
  end

  def show
    if current_user.admin?
      @device = Device.find params[:id]
    else
      @device = current_user.devices.find params[:id]
    end
    respond_to do |format|
      format.json {render json: @device.locations}
    end
  end

end
