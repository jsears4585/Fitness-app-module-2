class User < ApplicationRecord
  has_secure_password
  has_many :activity_entries
end
