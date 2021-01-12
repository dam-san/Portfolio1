class BrakersController < ApplicationController
  def new
  end

  def create
    Braker.new(braker_params).save
    redirect_to request.referer
  end

  def edit
  end

  def destroy
    Braker.find(params[:id]).destroy
    redirect_to request.referer
  end

  def update
  end

  def show
    @braker=Braker.find(params[:id])
    @box=Box.new
    # binding.pry
    @machine=Machine.new
  end

  def index
  end

  private

  def braker_params
    params.require(:braker).permit(:size, :box_id, :volt)
  end

end
