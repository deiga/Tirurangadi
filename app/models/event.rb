class Event < ActiveRecord::Base
  has_many :candidates

  validates :name, presence: true
end
