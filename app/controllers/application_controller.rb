class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:team_id, :name, :handicap_index, :phone_number, :photo_url])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:team_id, :name, :handicap_index, :phone_number, :photo_url])
  end
end
