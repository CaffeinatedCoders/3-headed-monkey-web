class DeviceDashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.devices.size > 0
      redirect_to action: :show, id: current_user.devices.first.id
    end
  end

  def show
    @devices = current_user.devices
    @device = @devices.find(params[:id])
    respond_to do |format|
      format.html
      format.json
    end
  end
end
