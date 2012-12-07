class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user

  helper_method :current_user

  private

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end

  def authenticate_user
    if Rails.env == "staging"
      authenticate_or_request_with_http_basic do |name, password|
        name == 'ygadmin' && password == '1qaz7ujm'
      end
    end
  end
end
