class Attendee < ActiveRecord::Base
  has_many :attendances

  def attendances_for candidate_ids
    self.attendances.select { |x| x.candidate_id == candidate_ids.pop}
  end
end
