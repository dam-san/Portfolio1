class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  # # ログイン時のパスを変更してる
  # def after_sign_in_path_for(resource)
  #   if customer_signed_in?
  #     customers_path(resource)
  #   else
  #     admin_top_path
  #   end
  # end

  # #ログアウト時のパスの変更
  # def after_sign_out_path_for(resource)
  #   root_path
  # end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :company])
  end

  def ensure_current_user
    if current_user.present?
      if current_user.status=="Invalid"
        flash[:error]="管理者から権限付与がされていません。"
        redirect_back(fallback_location: root_path)
      end
    else
      redirect_back(fallback_location: root_path)
    end
  end

end
