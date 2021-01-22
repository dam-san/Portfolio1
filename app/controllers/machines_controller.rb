class MachinesController < ApplicationController
  def index
  end

  def new
  end

  def create

    if params[:machine][:volt].to_i != params[:machine][:braker_volt].to_i
      flash[:error]="ブレーカーと機器の電圧が一致しません。"
      redirect_back(fallback_location: root_path)
    else

      if current > params[:machine][:braker_current].to_i
        flash[:error]="定格電流がブレーカーの容量を超えています。"
        redirect_back(fallback_location: root_path)
      else

        machine=Machine.new(machine_params)
        machine.place_id=params[:machine][:place].to_i
        machine.floor=Braker.find(params[:machine][:braker_id]).box.floor+1
        if machine.save
         flash[:info]="機器を登録しました。"
        else
         flash[:error]="登録に失敗しました。"
        end

        supply=Supply.new(supply_params)
        supply.machine_id=machine.id
        supply.save
        redirect_to request.referer
      end
    end
  end

  def edit
  end

  def show
    @machine=Machine.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def machine_params
    params.require(:machine).permit(:name, :kw, :cos, :place_id, :volt)
  end

  def judge
    params[:box][:braker_id].present?
  end

  def supply_params
    params.require(:machine).permit(:braker_id, :cable_size)
  end

  def current
      volt=params[:machine][:volt].to_i
      cosine=params[:machine][:cos].to_i
      watt=params[:machine][:kw].to_i*1000
    if volt==200
      # P = √3 × I × V × cosθ
      return (watt)/Math.sqrt(3)/volt/cosine

    elsif volt==100
      return (watt)/volt/cosine
    end


  end



end
