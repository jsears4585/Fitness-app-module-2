class User < ApplicationRecord
  has_secure_password

  has_many :activity_entries
  has_many :users_challenges
  has_many :challenges, through: :users_challenges

  validates :username, uniqueness: {message: "has already been taken!"}
  validates :username, :first_name, :last_name, :city, :password, :age, :weight, :email, presence: true
  validates :email, uniqueness: true
  validates :email, email_format: { message: "isn't properly formatted." }
  validates :age, numericality: {greater_than_or_equal_to: 17}

  def weight_class
    if self.weight <= 130
      "cph_130"
    elsif self.weight <=155
      "cph_155"
    elsif self.weight <= 180
      "cph_180"
    else
      "cph_205"
    end
  end

  def find_calories_by_days_ago(days_ago)
    @date_from = (Time.zone.now - days_ago.day).beginning_of_day
    @date_to = (Time.zone .now - (days_ago - 1).day).beginning_of_day
    self.activity_entries.where("created_at BETWEEN ? AND ?", @date_from, @date_to).sum(:calories_burned)
  end


  def find_calories_by_challenge(start_date)
    self.activity_entries.where("created_at BETWEEN ? AND ?", start_date, Date.today).sum(:calories_burned)
  end

##-----Admin feature methods------>



  def self.last_week
    #count of all new users signed up in the last week
     User.where('created_at BETWEEN ? AND ?', (Date.today - 7),(Date.today + 1))
  end

  def self.new_ytd(year)
    #count of all new years signed up since the beginning of the year
    User.where('created_at BETWEEN ? AND ?', "#{year}-01-01", "#{year}-12-31")
  end

  def self.new_today
    User.where("created_at >= ?", Time.zone.now.beginning_of_day)
  end

  def self.active_users
    #users that have logged an activity in the last 7 days
    User.where(@user.activity_entries.where("created_at BETWEEN ? AND ?", Date.today, Date.today - 7))
  end

  def self.super_users
    #users that have logged more than 5 activities in the last 7 days_ago
    #user's activities created_at BETWEEN ? AND ?', "Date.today, Date.today - 7
    #AND user activities count is >= 5
  end

  def self.challenge_users
   #total count of users enrolled in an active challenge
   #users that have a user_challenge
   #challenge end date is >= Date.today
  end

end
