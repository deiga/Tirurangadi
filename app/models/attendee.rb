class Attendee < ActiveRecord::Base
  has_many :attendances
end
