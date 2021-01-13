class BoxesController < ApplicationController
  def new
    @box=Box.new
    @boxes=Box.all
  end

  def create
    box=Box.new(box_params)
    box.save

    if judge
      
      relation=Relation.new(relation_params)
      relation.box_id=box.id
      relation.save
    end
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

    @brakers=Braker.where(box_id: @box.id)
    @braker=Braker.new
  end

  def index
  end

private

  def box_params
    params.require(:box).permit(:name, :kind)
  end

  def judge
    params[:box][:braker_id].present?
  end

  def relation_params
    params.require(:box).permit(:braker_id, :cable_size)
  end

end