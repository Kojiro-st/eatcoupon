class UsersController < ApplicationController

  def new
    @user = User.new
    @user.users << current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path, notice: 'グループを作成しました'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to users_index_path
    else
      render :edit
    end
  end

  

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
