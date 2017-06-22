class DashboardController < ApplicationController
  def new
    @users = User.all
    # @chart1 = Fusioncharts::Chart.new({
    #   width: "600",
    #   height: "400",
    #   type: "pie3d",
    #   renderAt: "chartContainer",
    #   dataSource: {
    #     "chart": {
    #       "caption": "Split of User Sign-ups",
    #       "subCaption": "Yesterday vs. Today",
    #       "paletteColors": "#0075c2,#1aaf5d,#f2c500,#f45b00,#8e0000",
    #       "bgColor": "#ffffff",
    #       "showBorder": "0",
    #       "use3DLighting": "0",
    #       "showShadow": "0",
    #       "enableSmartLabels": "0",
    #       "startingAngle": "0",
    #       "showPercentValues": "1",
    #       "showPercentInTooltip": "0",
    #       "decimals": "1",
    #       "captionFontSize": "14",
    #       "subcaptionFontSize": "14",
    #       "subcaptionFontBold": "0",
    #       "toolTipColor": "#ffffff",
    #       "toolTipBorderThickness": "0",
    #       "toolTipBgColor": "#000000",
    #       "toolTipBgAlpha": "80",
    #       "toolTipBorderRadius": "2",
    #       "toolTipPadding": "5",
    #       "showHoverEffect": "1",
    #       "showLegend": "1",
    #       "legendBgColor": "#ffffff",
    #       "legendBorderAlpha": "0",
    #       "legendShadow": "0",
    #       "legendItemFontSize": "10",
    #       "legendItemFontColor": "#666666",
    #       "useDataPlotColorForLabels": "1"
    #     },
    #     "data": [
    #       {
    #           "label": "Yesterday",
    #           "value": User.where("created_at < ?", Time.zone.now.beginning_of_day).count
    #       },
    #       {
    #           "label": "Today",
    #           "value": User.where("created_at >= ?", Time.zone.now.beginning_of_day).count
    #       }
    #     ]
    #   }
    # })
    #Signup Analytics
    @signup_chart = Fusioncharts::Chart.new({
      width: "600",
      height: "400",
      type: "bar2d",
      renderAt: "chartContainer",
      dataSource: {
      "chart": {
          "caption": "Recent User Sign-ups",
          #"subCaption": "",
          "yAxisName": "Sign-ups",
          #"numberPrefix": "$",
          "paletteColors": "#0075c2",
          "bgColor": "#ffffff",
          "showBorder": "0",
          "showCanvasBorder": "0",
          "usePlotGradientColor": "0",
          "plotBorderAlpha": "10",
          "placeValuesInside": "1",
          "valueFontColor": "#ffffff",
          "showAxisLines": "1",
          "axisLineAlpha": "25",
          "divLineAlpha": "10",
          "alignCaptionWithCanvas": "0",
          "showAlternateVGridColor": "0",
          "captionFontSize": "14",
          "subcaptionFontSize": "14",
          "subcaptionFontBold": "0",
          "toolTipColor": "#ffffff",
          "toolTipBorderThickness": "0",
          "toolTipBgColor": "#000000",
          "toolTipBgAlpha": "80",
          "toolTipBorderRadius": "2",
          "toolTipPadding": "5"
      },
      "data": [
          {
              "label": "Today",
              "value": User.new_today.count
          },
          {
              "label": "Past 7 days",
              "value": User.last_week.count
          },
          {
              "label": "YTD",
             "value": User.new_ytd(2017).count
          }
      ]
    }
  }
)

  end
end
