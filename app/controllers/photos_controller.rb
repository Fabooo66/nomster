class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    # p photos_params,"..........................."
    # photos_params.merge(user:current_user)
    @place.photos.create(photos_params.merge(user: current_user)
    redirect_to place_path(@place)
  end

  private

  def photos_params
    params.require(:photo).permit(:picture, :caption)
  end  

end
