class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?


  #diveseで作ったUserのストロングパラメータ追加
  #デフォルトにないnameの受取を許可
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end


end
