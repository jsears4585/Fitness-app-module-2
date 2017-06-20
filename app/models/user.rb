class User < ApplicationRecord
  has_secure_password
  has_many :activity_entries
  validates :username, uniqueness: true
  # validates :email, uniqueness: true
end
