class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :first_name, :last_name])
  end
end
