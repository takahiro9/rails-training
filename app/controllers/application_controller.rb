class ApplicationController < ActionController::Base
    before_action :require_login
    def not_authenticated
        redirect_to new_user_session_path
    end
end
