require 'rails_helper'

RSpec.describe User, type: :model do 
  describe 'validations' do
    it { should validate_presence_of :password_digest }
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :state }
    it { should validate_presence_of :username }
    it { should validate_presence_of :email }
  end

  describe 'relationships' do
    it { should have_many(:businesses) }
  end
end