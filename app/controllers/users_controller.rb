class UsersController < ApplicationController
    def index
        @user = current_user
    end

    def show
        render :json => User.find(params[:id])
    end
  end