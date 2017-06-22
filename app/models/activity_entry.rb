class ActivityEntry < ApplicationRecord
  belongs_to :user

  def all
    @activity_entries = ActivityEntry.all
  end
end
