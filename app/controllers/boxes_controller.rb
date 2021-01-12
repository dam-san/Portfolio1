class BoxesController < ApplicationController
  def new
    @box=Box.new
    @boxes=Box.all
  end

  def create
    box=Box.new(box_params)
    box.place_id=1
    box.save
    redirect_to request.referer
  end

  def edit
  end

  def destroy
   Box.find(params[:id]).destroy
   redirect_to request.referer
  end

  def update
  end

  def show
    @box=Box.find(params[:id])

    @brakers=Braker.all
    @braker=Braker.new
  end

  def index
  end

private

  def box_params
    params.require(:box).permit(:name)
  end

end
