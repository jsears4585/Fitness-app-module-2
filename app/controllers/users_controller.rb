class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create, :new_admin]


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      UserMailer.welcome_email(@user).deliver_now
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = find_user
    @chart = Fusioncharts::Chart.new({
      width: "600",
      height: "400",
      type: "column3d",
      renderAt: "chartContainer",
      dataSource: {
        "chart": {
            "caption": "Weekly Calories Burned (Last 7 Days)",
            "xAxisName": "Days",
            "yAxisName": "Calories Burned",
            "paletteColors": "#0075c2",
            "bgColor": "#ffffff",
            "borderAlpha": "20",
            "plotBorderAlpha": "10",
            "placevaluesInside": "1",
            "rotatevalues": "1",
            "valueFontColor": "#ffffff",
            "showXAxisLine": "1",
            "xAxisLineColor": "#999999",
            "divlineColor": "#999999",
            "divLineDashed": "1",
            "showAlternateHGridColor": "0",
        },
        "data": [
            {
                "label": "7 Days Ago",
                "value": @user.find_calories_by_days_ago(7)
            },
            {
                "label": "6 Days Ago",
                "value": @user.find_calories_by_days_ago(6)
            },
            {
                "label": "5 Days Ago",
                "value": @user.find_calories_by_days_ago(5)
            },
            {
                "label": "4 Days Ago",
                "value": @user.find_calories_by_days_ago(4)
            },
            {
                "label": "3 Days Ago",
                "value": @user.find_calories_by_days_ago(3)
            },
            {
                "label": "2 Days Ago",
                "value": @user.find_calories_by_days_ago(2)
            },
            {
                "label": "Yesterday",
                "value": @user.find_calories_by_days_ago(1)
            },
            {
                "label": "Today",
                "value": @user.activity_entries.where("created_at >= ?", Time.zone.now.beginning_of_day).sum(:calories_burned)
            }
          ]
        }
      })
    unless session[:user_id] == @user.id
      flash[:error] = "Mind ya business!"
      redirect_to user_path(session[:user_id])
    end
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

  # Admin actions

  def new_admin
    @user = User.new
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
        :weight,
        :admin,
        :email
      )
    end


end
