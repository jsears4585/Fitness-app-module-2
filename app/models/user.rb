class User < ApplicationRecord
  has_secure_password
  has_many :activity_entries
  validates :username, uniqueness: true
  # validates :email, uniqueness: true
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


end
