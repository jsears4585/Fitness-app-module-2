class ActivityEntriesController < ApplicationController
  before_action :require_login

  def new
    @activity_entry = ActivityEntry.new
    @data = ActivityDatum.all
  end

  def create
    weight_class = current_user.weight_class

    @activity = ActivityDatum.find(params[:activity_entry][:id])
    hours = @activity.mins_to_hours(params[:activity_entry][:minutes])
    cals_burned = (@activity.cals_burned(weight_class, hours)).to_i

    @entry = ActivityEntry.new(name: @activity.name, minutes: params[:activity_entry][:minutes])
    @entry.calories_burned = cals_burned
    @entry.user_id = current_user.id

    if @entry.save
      redirect_to user_path(current_user)
    else
      redirect_to new_entry_path
    end

  end

  def edit
    @activity_entry = current_entry
  end

  def update
    # Fix this
  end

  def destroy
    @current_entry = current_entry
    @current_entry.destroy
    flash[:success] = "Record successfully deleted!"
    redirect_to user_path(current_user)
  end

  private
  def current_entry
    ActivityEntry.find(params[:id])
  end

  def activity_entry_params
    params.require(:activity_entry).permit(:id, :minutes)
  end

end
