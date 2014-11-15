class Api::V1::LocationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_device

  def create
    @locations = @device.locations.create location_params
    @errors = @locations.collect {|location| location.errors.full_messages }.flatten

    if @errors.empty?
      head :ok
    else
      render json: {errors: @errors}, status: :unprocessable_entity
    end
  end

  private

  def set_device
    @device = Device.find_by_key params[:device_key]
  end

  def location_params
    unless params[:location].is_a? Array
      params[:location] = [ params[:location] ]
    end
    params.permit(location: [:latitude, :longitude, :altitude, :accuracy, :provider, :time]).require(:location)
  end

end
