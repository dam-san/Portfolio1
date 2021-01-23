class BoxesController < ApplicationController
  before_action :authenticate_user!

 # box.kind=0 親なし（変電所）
 # box.kind=1 親あり（分電盤）

  def new
    @box = Box.new
    @boxes = Box.where(kind: 0)
  end

  def create
    box = Box.new(box_params)
    box.place_id = params[:box][:place].to_i

    # 以下は登録物の階層設定。brakerを持つ親の階層に＋１する
    if box.kind == 1 # kind0・・・変電所、kind1・・・分電盤
      box.floor = Braker.find(params[:box][:braker_id]).box.floor + 1
    end

    if box.floor < 3
      if box.save
        flash[:info] = "登録しました。"
        # 以下のjudgeは、親の有無を判断。親がいる場合はbrakerとのrelationを記録する。
        if judge
          relation = Relation.new(relation_params)
          relation.box_id = box.id
          relation.save
        end
        redirect_to box_path(box)# showページ
      else
        flash[:error] = "失敗しました。"
        redirect_back(fallback_location: root_path)
      end
    else
      flash[:error] = "分岐が制限回数を超えました。"
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @box = Box.find(params[:id])
  end

  def destroy
    box = Box.find(params[:id])
    box.brakers.each do |x|
      if x.relation.present?
        x.relation.box.destroy
      elsif x.supply.present?
        x.supply.machine.destroy
      end
    end

    # 変電所のリダイレクト先
    if box.kind == 0
      box.destroy
      Box.all.each do |x|
        if x.relation.blank? && x.kind == 1
          x.destroy
        end
      end
      Machine.all.each do |x|
        if x.supply.blank?
          x.destroy
        end
      end

      redirect_to new_box_path
    # 分電盤のリダイレクト先
    else
      box_parent = box.parent
      box.destroy

      Box.all.each do |x|
        if x.relation.blank? && x.kind == 1
          x.destroy
        end
      end

      Machine.all.each do |x|
        if x.supply.blank?
          x.destroy
        end
      end
      redirect_to box_path(box_parent)
    end
  end

  def update
    box = Box.find(params[:id])
    box.place_id = params[:box][:place].to_i
    box.update(box_params)
    redirect_to box_path(box)
  end

  def show
    @box = Box.find(params[:id])
    @brakers = Braker.where(box_id: @box.id).includes(:relation, :supply)
    @braker = Braker.new
  end

  def index
    @machines = Machine.all
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
