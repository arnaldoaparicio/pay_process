class Business < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :state
  validates_presence_of :address
  validates_presence_of :service_type
  
  belongs_to :user

  has_many :appointments
end
