class User < ApplicationRecord
  has_secure_password

  has_many :activity_entries
  has_many :users_challenges
  has_many :challenges, through: :users_challenges

  validates :username, uniqueness: true

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

  def find_calories_by_days_ago days_ago
    @date_from = (Time.zone.now - days_ago.day).beginning_of_day
    @date_to = (Time.zone.now - (days_ago - 1).day).beginning_of_day
    self.activity_entries.where("created_at BETWEEN ? AND ?", @date_from, @date_to).sum(:calories_burned)
  end

  # def find_calories_by_challenge(challenege, )

end
