class Attendance < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :attendee
end
