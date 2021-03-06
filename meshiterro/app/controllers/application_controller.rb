class ApplicationController < ActionController::Base

#ここから手動で追記======================================================
  before_action :authenticate_user!, except: [:top] #ログインされてない場合はTop『アクション』が実行。つまり、ここでは、「after_sign_in_path_for(resource)を実行？

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource) #URL「(省略)/users/sign_in」の後は、post_images_pathへリダイレクト。おそらく、URLのusersの部分は記述しなくてもdeviseの機能で自動追記される。
    post_images_path
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

#ここまで手動で追記======================================================

end
