
class ActivityEntriesController < ApplicationController

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
      redirect_to new_activity_entry_path
    end

  end
  #
  # def create
  #   byebug
  #   @activity_entry = ActivityEntry.new(activity_entry_params)
  #   if @activity_entry.save
  #     redirect_to activity_entry_path(@activity_entry)
  #   else
  #     render :new
  #   end
  #   #1. grab the user's id
  #   #2. grab the user's weight/weightrange
  #   #3. calculate the calories burned based on the minutes and activity name, and the calories burned/hour data in our DB
  #
  #
  # def show
  #   @activity_entry=current_entry
  # end
  #
  # def edit
  #   @activity_entry=current_entry
  # end
  #
  # def update
  #     @activity_entry=current_entry
  #     if @activity_entry.update(activity_entry_params)
  #       redirect_to activity_entry_path
  #     else
  #       render :edit
  #     end
  # end
  #
  # def destroy
  # end
  #
  private
  def current_entry
    ActivityEntry.find(params[:id])
  end


  def activity_entry_params
    params.require(:activity_entry).permit(:id, :minutes)
  end



end
