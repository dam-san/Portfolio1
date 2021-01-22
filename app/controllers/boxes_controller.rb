class BoxesController < ApplicationController

  before_action :authenticate_user!

  def new
    @box=Box.new
    @boxes=Box.where(kind: 0)
  end

  def create
    box=Box.new(box_params)
    box.place_id=params[:box][:place].to_i

    # 以下は登録物の階層設定。brakerを持つ親の階層に＋１する
    if box.kind != 0
     box.floor=Braker.find(params[:box][:braker_id]).box.floor+1
    end

    if box.save
        flash[:info]="登録しました。"
        if judge
          relation=Relation.new(relation_params)
          relation.box_id=box.id
          relation.save
        end

        redirect_to box_path(box)
    else
       flash[:error]="失敗しました。"
       redirect_back(fallback_location: root_path)
    end

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

    @brakers=Braker.where(box_id: @box.id).includes(:relation, :supply)

    @braker=Braker.new
  end

  def index
    @machines=Machine.all

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
