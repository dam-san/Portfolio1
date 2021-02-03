class MachinesController < ApplicationController

  
  before_action :ensure_current_user

  def index
  end

  def new
  end

  def create
    # ブレーカーの選定の2要素：①電圧が一致しているか。②電流サイズが適切化

    # ①まず電圧のチェック
    if params[:machine][:volt].to_i != params[:machine][:braker_volt].to_i
      flash[:error] = "ブレーカーと機器の電圧が一致しません。"
      redirect_back(fallback_location: root_path)
    else
      # ②電流サイズのチェック
      if current > params[:machine][:braker_current].to_i
        flash[:error] = "定格電流がブレーカーの容量を超えています。機器：#{current.to_i}[A] ＞ #{params[:machine][:braker_current].to_i}[A]"
        redirect_back(fallback_location: root_path)
      else
        machine = Machine.new(machine_params)
        machine.place_id = params[:machine][:place].to_i
        machine.floor = Braker.find(params[:machine][:braker_id]).box.floor + 1
        if machine.save
          flash[:info] = "機器を登録しました。"
          # ブレーカーとの関係性の構築
          supply = Supply.new(supply_params)
          supply.machine_id = machine.id
          supply.save
          redirect_to machine_path(machine)
        else
          flash[:error] = "登録に失敗しました。"
          redirect_back(fallback_location: root_path)
        end

      end
    end
  end

  def edit
    @machine = Machine.find(params[:id])
  end

  def show
    @machine = Machine.find(params[:id])
  end

  def update
    Machine.find(params[:id]).update(machine_params)
    redirect_to machine_path(params[:id])
  end

  def destroy
    machine = Machine.find(params[:id])
    id = machine.supply.braker.id
    machine.destroy
    # 機器を削除した場合は、元々その機器がついていたブレーカーの詳細へ遷移する。
    redirect_to braker_path(id)
  end

  private

  def machine_params
    params.require(:machine).permit(:name, :kw, :cos, :place_id, :volt, :image)
  end

  def supply_params
    params.require(:machine).permit(:braker_id, :cable_size)
  end

  # 登録を試みる機器のkw→Aへ変換計算
  # P = √3 × I × V × cosθという式を元に計算している。
  def current
    volt = params[:machine][:volt].to_i
    cosine = params[:machine][:cos].to_f
    watt = params[:machine][:kw].to_i * 1000
    # 力率cosineが０の場合の、ゼロ割エラーの回避文
    if cosine != 0
      if volt == 200
        return watt / Math.sqrt(3) / volt / cosine
      elsif volt == 100
        return watt / volt / cosine
      end
    else
      # ブレーカーにはありえないサイズを指定し、エラーの回避
      return 9999
    end
  end
end
