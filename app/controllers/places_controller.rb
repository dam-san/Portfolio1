class PlacesController < ApplicationController

  before_action :ensure_current_user

  def index
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
    @places = Place.all
  end

  def edit
    @place = Place.find(params[:id])
  end

  def create
    # flash[:info] = "登録しました。"
    Place.new(place_params).save
    @place = Place.new
    @places = Place.all
  end

  def update
    @plase = Place.find(params[:id])
    @plase.update(place_params)
    @places = Place.all
    redirect_to request.referer
  end

  def destroy
    @places = Place.all
    Place.find(params[:id]).destroy
  end

  private

  def place_params
    params.require(:place).permit(:place, :image)
  end
end
