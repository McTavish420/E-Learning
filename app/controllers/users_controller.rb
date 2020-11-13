class UsersController < ApplicationController

  before_action :is_admin, only: [:index, :edit, :update]
  before_action :set_user, only: [:edit, :update]
  

  def index
    if is_admin
      @users = User.all.order(created_at: :desc)
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_path, notice: "User #{@user.email} was successfully updated"
    else
      render :edit
    end
  end

  private

  def is_admin
    if current_user.has_role?(:admin)
      return true
    else
      redirect_to root_path, alert: "You do not have access unless you are admin"
    end
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit({role_ids: []})
  end
end