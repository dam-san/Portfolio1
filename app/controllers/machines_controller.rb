class MachinesController < ApplicationController
  def index
  end

  def new
  end

  def create
    Machine.new(machine_params).save
    redirect_to request.referer
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def machine_params
    params.require(:machine).permit(:name, :kw, :cos, :place_id, :volt)
  end
end
