class User < ApplicationRecord
  has_secure_password

  has_many :activity_entries
  has_many :users_challenges
  has_many :challenges, through: :users_challenges

  validates :username, uniqueness: true
  validates :email, email_format: { message: "isn't properly formatted." }
  validates :email, uniqueness: true

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
    @date_to = (Time.zone.now - (days_ago - 1).day).beginning_of_day
    self.activity_entries.where("created_at BETWEEN ? AND ?", @date_from, @date_to).sum(:calories_burned)
  end

  def find_calories_by_challenge(start_date, end_date)
    self.activity_entries.where("created_at BETWEEN ? AND ?", (start_date - 5.hours), (end_date- 5.hours)).sum(:calories_burned)
  end

  def self.last_week
     User.where('created_at BETWEEN ? AND ?', (Time.zone.now - 7),(Time.zone.now + 1))
  end

  def self.new_ytd(year)
    User.where('created_at BETWEEN ? AND ?', "#{year}-01-01", "#{year}-12-31")
  end

  def self.new_today
    User.where("created_at >= ?", Time.zone.now.beginning_of_day)
  end

  def self.active_users
    User.where(@user.activity_entries.where("created_at BETWEEN ? AND ?", Time.zone.now, Time.zone.now - 7))
  end

end
