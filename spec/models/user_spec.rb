# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { create(:user) }

  describe 'validations' do
    it { expect(user).to be_valid }

    %i[email password first_name last_name].each do |field_name|
      it { expect(user).to validate_presence_of(field_name) }
    end

    describe 'full name method' do
      before do
        user.first_name = 'John'
        user.last_name = 'Doe'
      end

      it { expect(user.full_name).to eq('John Doe') }
    end

    describe 'full name methd no to be' do
      before do
        user.first_name = 'John'
        user.last_name = 'Doe'
      end

      it { expect(user.full_name).not_to eq('Jane Doe') }
    end
  end
end
