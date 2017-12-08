class UsersController < ApplicationController
  def new
  end

  def create
    # render plain: params[:user].inspect
    @user = User.new(user_params)
    redirect_to @user if @user.save
  end

  def show
    @user = User.find params[:id]
  end


  # https://stackoverflow.com/questions/17335329/activemodelforbiddenattributeserror-when-creating-new-user
  def user_params
    params.require(:user).permit(:username, :email)
  end
end
