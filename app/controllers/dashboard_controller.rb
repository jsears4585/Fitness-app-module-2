class DashboardController < ApplicationController
  def new
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
end
