class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  # GET /places
  # GET /places.json
  def index

  end

  # GET /places/1
  # GET /places/1.json
  def show
    @place= Place.find(params[:id])

  end

  # GET /places/new
  def new
    @place = Place.new
    @places = Place.all
  end

  # GET /places/1/edit
  def edit
    @place= Place.find(params[:id])
  end

  # POST /places
  # POST /places.json
  def create
    Place.new(place_params).save
    @place = Place.new
    @places = Place.all

  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    @plase=Place.find(params[:id])
    @plase.update(place_params)
    @places=Place.all
    redirect_to request.referer
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @places=Place.all
    Place.find(params[:id]).destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def place_params
      params.require(:place).permit(:place)
    end
end
