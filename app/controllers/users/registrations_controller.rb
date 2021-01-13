# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  prepend_before_action :require_no_authentication, only: [:cancel]
  prepend_before_action :set_minimum_password_length, only: [:new, :edit]
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  before_action :creatable?, only: [:new, :create]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def current_user_is_admin?
    user_signed_in? && current_user.has_role?(:admin)
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  def sign_up(resource_name, resource)
    if !current_user_is_admin?
      sign_in(resource_name, resource)
    end
  end

  def creatable?
    raise CanCan::AccessDenied unless user_signed_in?
    if !current_user_is_admin?
      raise CanCan::AccessDenied
    end
  end

  #アカウント登録後のリダイレクト先
  def after_sign_up_path_for(resource)
    admins_path
  end

  #アカウント編集後のリダイレクト先
  def after_update_path_for(resource)
    admins_path
  end
end
