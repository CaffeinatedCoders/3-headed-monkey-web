class Api::V1::DevicesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_device

  def show
  end

  def update
  end

  private

  def set_device
    @device = Device.find_by_key params[:device_key]
  end

end
