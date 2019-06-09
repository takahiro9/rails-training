class UserSessionsController < ApplicationController
    skip_before_action :require_login, only: [:destroy, :new, :create]
    def index
        @user = current_user
    end

    def create
        if @user = login(params[:email], params[:password])
            redirect_to user_sessions_path
          else
            flash.now[:alart] = 'login failed.'
            redirect_to new_user_session_path
        end
    end
  
    def new
    end
  
    def destroy
      logout
      flash.now[:alart] = "logout done."
      redirect_to new_user_session_path
    end
  end