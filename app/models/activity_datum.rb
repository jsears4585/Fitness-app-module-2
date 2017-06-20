class ActivityDatum < ApplicationRecord
  validates :name, uniqueness: true
end
