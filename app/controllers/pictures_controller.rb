class PicturesController < ApplicationController
  def create
    @picture = Picture.new picture_params

    if @picture.save
      redirect_to @picture
    else
      render :new
    end
  end

  def new
    @picture = Picture.new
  end

  def show
    @picture = Picture.find(params[:id])
  end

  private

  def picture_params
    params.require(:picture).permit(:data_url)
  end
end
