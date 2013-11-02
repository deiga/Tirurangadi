class Attendance < ActiveRecord::Base
  belongs_to :time
  belongs_to :attendee
end
