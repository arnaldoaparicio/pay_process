class Appointment < ApplicationRecord
  validates_presence_of :time
  validates_presence_of :location
  validates_presence_of :approve
  validates_presence_of :deposit
  validates_presence_of :price

  belongs_to :business
end
