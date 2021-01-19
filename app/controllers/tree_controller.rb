class TreeController < ApplicationController

  # treeに関する唯一のhtmlページ
  def index
    @boxes=Box.where(kind: 0)
  end
  
  
  # クリック時のｊｓ通信に関するアクションです。
  def show
    @box=Box.find(params[:id])
    @brakers=@box.brakers
  end


  def detail
    @machine=Machine.find(params[:id])
    @box=@machine.parent
    # binding.pry
  end


end
