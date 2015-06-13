class Task < ActiveRecord::Base
  validates_presence_of :title
  validate :future_completed_date

  private

  def future_completed_date
    if !complete.blank? && complete > Date.today
      self.errors.add(:complete, "can't be in the future")
    end
  end
end
