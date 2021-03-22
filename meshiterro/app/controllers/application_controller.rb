class ApplicationController < ActionController::Base

#ここから手動で追記======================================================

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

#ここまで手動で追記======================================================

end
