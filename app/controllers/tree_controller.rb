class TreeController < ApplicationController
  # tree�������関する唯一のhtmlページ
  def index
    @boxes = Box.where(kind: 0)

    @nrelation = Relation.all.size
    @nsupply = Supply.all.size
    @nbox = Box.all.size
    @nbraker = Braker.all.size
    @nmachine = Machine.all.size
  end

  # クリック時のｊｓ通信に関するアクションです。
  def show
    @box = Box.find(params[:id])
    @brakers = @box.brakers
  end

  def detail
    @machine = Machine.find(params[:id])
    @box = @machine.parent
  end
end
