class Admin::BaseController < ApplicationController

before_filter :require_admin

private

def require_admin
  unless @current_user.admin
    flash[:notice] = "You do not have permission to access this page."
    redirect_to welcome_path
  end
end

end
