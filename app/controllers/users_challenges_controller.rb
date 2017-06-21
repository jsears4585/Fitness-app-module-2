class UsersChallengesController < ApplicationController

  def new
  end

  def create
    @users_challenge = UsersChallenge.new(user_id: current_user.id, challenge_id: params[:challenge_id])
    @users_challenge.save
    redirect_to user_path(@users_challenge.user_id)
  end

end
