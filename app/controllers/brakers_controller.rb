class BrakersController < ApplicationController
  def new
  end

  def create
    if Braker.new(braker_params).save
     flash[:info]="登録しました。"
    else
     flash[:error]="登録に失敗しました。"
    end
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
    # binding.pry
    @box=Box.new
    # binding.pry
    @machine=Machine.new

    @max_kw=@braker.volt*@braker.size*Math.sqrt(3)/1000
  end

  def index
  end

  private

  def braker_params
    params.require(:braker).permit(:size, :box_id, :volt)
  end

end
