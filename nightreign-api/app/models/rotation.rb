class Rotation < ApplicationRecord
  has_many :rotation_night_lords, dependent: :destroy
  has_many :night_lords, through: :rotation_night_lords

  validate :effective_at_is_wed_6pm_pt

  scope :current, -> {
    where("effective_at <= ?", Time.current)
      .order(effective_at: :desc)
      .limit(1)
  }

  private

  def effective_at_is_wed_6pm_pt
    return if effective_at.blank?

    t = effective_at.in_time_zone("America/Los_Angeles")
    errors.add(:effective_at, "must be Wednesday 6:00 PM PT") unless t.wday == 3 && t.hour == 18 && t.min == 0
  end
end