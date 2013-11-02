class Event < ActiveRecord::Base
  has_many :candidates
  accepts_nested_attributes_for :candidates, :reject_if => proc {|attributes| attributes[:title].blank? }, :allow_destroy => true

  validates :name, :created_by, presence: true

  def attendees
    self.candidates.map { |c| c.attendances.map(&:attendee) }.flatten.uniq
  end
end
