class User < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :state
  validates_presence_of :username
  validates_presence_of :email
  validates_presence_of :password_digest

  has_many :businesses

  has_secure_password

  before_validation :strip_spaces

  private

  def strip_spaces
    self.first_name = self.first_name&.strip
    self.last_name = self.last_name&.strip
    self.username = self.username&.strip
    self.email = self.email&.strip
  end
end
