class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource
  private
    def after_sign_in_path_for(resourse)
        admin_home_index_path
    end

  protected
    def layout_by_resource
      if devise_controller?
        "login"
      else
        "application"
      end
    end
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :email, :password, :apellidoPaterno, :apellidoMaterno, :fechaNacimiento] )
        devise_parameter_sanitizer.permit(:sign_in, keys: [:nombre, :email, :password, :apellidoPaterno, :apellidoMaterno, :fechaNacimiento] )
    end
end

