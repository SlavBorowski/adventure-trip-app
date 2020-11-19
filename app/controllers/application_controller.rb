class ApplicationController < ActionController::Base
  # For any actions performed by a devise controller, do configure permitted paramaters first 
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  # For sign up through devise only permit parameters listed as keys below
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:business_name, :phone, :website, :first_name, :last_name])
  end

end
