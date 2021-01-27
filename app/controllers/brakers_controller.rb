class BrakersController < ApplicationController

  before_action :ensure_current_user

  def new
  end

  def create
    if Braker.new(braker_params).save
      flash[:info] = "登録しました。"
    else
      flash[:error] = "登録に失敗しました。"
    end
    redirect_to request.referer
  end

  def edit
    @braker = Braker.find(params[:id])
  end

  def destroy
    braker = Braker.find(params[:id])
    box = braker.box
    if braker.has_machine?
      braker.machine_child.destroy
    elsif braker.has_box?
      braker.box_child.destroy
    end
    braker.destroy
    redirect_to box_path(box)
  end

  def update
    braker = Braker.find(params[:id])
    braker.update(braker_params)
    redirect_to braker_path(braker)
  end

  def show
    @braker = Braker.find(params[:id])
    @box = Box.new
    @machine = Machine.new

    if @braker.volt==200
      cables_all=Cable.where(core: 3)
    elsif @braker.volt==100
      cables_all=Cable.where(core: 2)
    end
    @cables=[]
    cables_all.each do |cable|
      if cable.size > @braker.size
        @cables.push(cable)
      end
    end

    # ブレーカーの許容できるワット数を試算(200Vのみ対応)
    @max_kw = @braker.volt * @braker.size * Math.sqrt(3) / 1000
  end

  # def index
  # end

  private

  def braker_params
    params.require(:braker).permit(:size, :box_id, :volt)
  end
end
