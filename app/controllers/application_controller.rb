class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
<<<<<<< Updated upstream
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :gender, :last_name, :first_name, :last_name_kana, :first_name_kana, :birthday])
=======
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :residence, :gender, :birthday])
    devise_parameter_sanitizer.permit(:account_update, keys: [:profile_image, :nickname, :movie_information, :self_introduction, :profile_image, :residence])
>>>>>>> Stashed changes
  end
end
