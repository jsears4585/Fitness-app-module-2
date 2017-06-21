class UserMailer < ApplicationMailer
  default from: 'admin@healthbattles.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/login'
    mail(to: "jsears4585@gmail.com", subject: 'Welcome to HealthBattles.com!')
  end
end
