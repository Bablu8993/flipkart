class ApplicationController < ActionController::API
  include Knock::Authenticable
  # before_action :auth_user
  protected
  # Method for checking if current_user is admin or not.
  def authorize_as_admin
    render json:{msg:"Not Authorize Only Admin allowed"} unless !current_user.nil? && current_user.is_admin?
  end

  def auth_user
    render json:{auth_user: "Not Authorized"} unless current_user
  end
end
