class Admin::MemberController < ApplicationController

  before_action :authenticate_admin!
  

  def index
    @members=User.where(company: current_admin.company)

  end

  def update
    user=User.find(params[:id])
    if user.status == "Valid"
      user.update(status: "Invalid")
    else
      user.update(status: "Valid")
    end


    redirect_to request.referer
  end

  def destroy
    @user=User.find(params[:id])
    @user.destroy
    redirect_to request.referer
  end
end
