class Admin::UsersController < Admin::BaseController

  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "authority updated"
      redirect_to admin_users_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:role)
  end


end
