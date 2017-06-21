class Challenge < ApplicationRecord
  has_many :users_challenges
  has_many :users, through: :users_challenges

  #should validate for name, start and end time;
  #only users who are logged in can create a challenge

end
