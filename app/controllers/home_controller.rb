class HomeController < ApplicationController

  def top
  end

  # 簡単ログイン
  def new_guest
    user = User.find_or_create_by!(email: 'user@user.com') do |user|
      user.password = "098098"
      user.company="knowHows.co"
      user.name="社員"
    end
    sign_in user
    flash[:info]='ゲストユーザーとしてログインしました。'
    redirect_to root_path
  end


end