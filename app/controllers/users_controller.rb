class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = find_user
  end

  def edit
    @user = find_user
  end

  def update
    @user = find_user
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    find_user.destroy
    redirect_to root_path
  end

  private

    def find_user
      User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(
        :username,
        :first_name,
        :last_name,
        :city,
        :password,
        :password_confirmation,
        :age,
        :weight
      )
    end

end
