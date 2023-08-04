require 'rails_helper'

RSpec.describe Business, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :state }
    it { should validate_presence_of :address }
    it { should validate_presence_of :service_type }
  end

  describe 'relationships' do
    it { should belong_to :user}
    it { should have_many :appointments}
  end
end