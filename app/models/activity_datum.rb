class ActivityDatum < ApplicationRecord
  validates :name, uniqueness: true

  def mins_to_hours(mins)
    mins = mins.to_i
    (mins/60).to_f
  end

  def cals_burned(weight_class, hours)
    case weight_class
    when "cph_130"
      self.cph_130 * hours
    when "cph_155"
      self.cph_155 * hours
    when "cph_180"
      self.cph_180 * hours
    when "cph_205"
      self.cph_205 * hours
    end
  end

end
