class UserMailer < ApplicationMailer
  default from: 'admin@healthbattles.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Welcome to HealthBattles.com!')
  end
end
