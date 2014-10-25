class Api::V1::LocationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_device

  def create
    @location = @device.locations.new location_params
    if @location.save
      head :ok
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  private

  def set_device
    @device = Device.find_by_key params[:device_key]
  end

  def location_params
    params.require(:location).permit!
  end

end
