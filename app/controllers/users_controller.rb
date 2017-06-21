class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create, :new_admin]

  def index
    @users = User.all
    @chart = Fusioncharts::Chart.new({
      width: "600",
      height: "400",
      type: "pie3d",
      renderAt: "chartContainer",
      dataSource: {
        "chart": {
          "caption": "Split of User Sign-ups",
          "subCaption": "Yesterday vs. Today",
          "paletteColors": "#0075c2,#1aaf5d,#f2c500,#f45b00,#8e0000",
          "bgColor": "#ffffff",
          "showBorder": "0",
          "use3DLighting": "0",
          "showShadow": "0",
          "enableSmartLabels": "0",
          "startingAngle": "0",
          "showPercentValues": "1",
          "showPercentInTooltip": "0",
          "decimals": "1",
          "captionFontSize": "14",
          "subcaptionFontSize": "14",
          "subcaptionFontBold": "0",
          "toolTipColor": "#ffffff",
          "toolTipBorderThickness": "0",
          "toolTipBgColor": "#000000",
          "toolTipBgAlpha": "80",
          "toolTipBorderRadius": "2",
          "toolTipPadding": "5",
          "showHoverEffect": "1",
          "showLegend": "1",
          "legendBgColor": "#ffffff",
          "legendBorderAlpha": "0",
          "legendShadow": "0",
          "legendItemFontSize": "10",
          "legendItemFontColor": "#666666",
          "useDataPlotColorForLabels": "1"
        },
        "data": [
          {
              "label": "Yesterday",
              "value": User.where("created_at < ?", Time.zone.now.beginning_of_day).count
          },
          {
              "label": "Today",
              "value": User.where("created_at >= ?", Time.zone.now.beginning_of_day).count
          }
        ]
      }
    })
  end

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

  def admin
  end

  def new_admin
    @user = User.new
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
        :weight,
        :admin,
        :email
      )
    end



end
