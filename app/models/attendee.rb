class Attendee < ActiveRecord::Base
  has_many :attendances

  def attendances_for candidate_ids
    candidate_ids.sort!
    self.attendances.order(:candidate_id).select { |x| x.candidate_id == candidate_ids.shift}
  end
end
