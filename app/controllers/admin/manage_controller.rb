class Admin::ManageController < ApplicationController
  before_action :authenticate_admin!

  def index
    # binding.pry
  end

  def update
  end

  def destroy
  end
end
