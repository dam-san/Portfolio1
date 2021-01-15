class ManagesController < ApplicationController
  before_action :authenticate_admin!

  def top
    @user=User.find(2)

  end

  def index
    @user=User.new


  end

  def user_manage
  end
end
