class UsersChallengesController < ApplicationController

  def new
  end

  def create
    @users_challenge = UsersChallenge.new(user_id: current_user.id, challenge_id: params[:challenge_id])
    if @users_challenge.save
      flash[:success] = "Challenge entered!"
    else
      flash[:error] = "You're already entered in this challenge."
    end
    redirect_to user_path(@users_challenge.user_id)
  end

end
