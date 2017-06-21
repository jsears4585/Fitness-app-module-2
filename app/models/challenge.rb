class Challenge < ApplicationRecord
  has_many :users_challenges
  has_many :users, through: :users_challenges
end
