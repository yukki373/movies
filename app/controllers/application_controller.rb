class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :gender, :birthday])
    devise_parameter_sanitizer.permit(:account_update, keys: [:profile_image, :nickname, :movie_information, :self_introduction])
  end
end
