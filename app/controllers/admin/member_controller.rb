class Admin::MemberController < ApplicationController

  before_action :authenticate_admin!

  def index
    @members=User.where(company: current_admin.company)

  end

  def update
  end

  def destroy
  end
end
