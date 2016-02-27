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

  def show; end

  private

  def picture_params
    params.require(:picture).permit()
  end
end
