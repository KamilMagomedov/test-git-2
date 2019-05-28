class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :except => [:landing]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def landing; end

  def home; end 
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up, keys: %i[
        email 
        first_name 
        last_name 
        user_name 
        age
        major
        school
        address
      ]
    ) 
  end
end