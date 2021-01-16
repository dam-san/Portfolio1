class MachinesController < ApplicationController
  def index
  end

  def new
  end

  def create
    machine=Machine.new(machine_params)

    machine.place_id=params[:machine][:place].to_i
    machine.save
    supply=Supply.new(supply_params)
    supply.machine_id=machine.id
    supply.save
    redirect_to request.referer
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
end
