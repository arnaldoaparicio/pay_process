require 'rails_helper'

RSpec.describe Appointment, type: :model do 
  describe 'validations' do
    it { should validate_presence_of :time }
    it { should validate_presence_of :location }
    it { should validate_presence_of :approve }
    it { should validate_presence_of :deposit }
    it { should validate_presence_of :price }
  end

  describe 'relationships' do
    it { should belong_to :business }
  end

end