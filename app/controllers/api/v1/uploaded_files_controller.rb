class Api::V1::UploadedFilesController < Api::V1::BaseController

  def create
    @uploaded_file = @device.uploaded_files.create uf_params
    if @uploaded_file.errors.empty?
      head :ok
    else
      render json: @uploaded_file.errors, status: :unprocessable_entity
    end
  end

  private

  def uf_params
    params.require(:uploaded_file).permit(:file)
  end
end