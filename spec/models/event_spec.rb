# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  subject(:event) { create(:event) }

  describe 'validations' do
    it { expect(event).to be_valid }
    it { expect(event).to validate_presence_of(:title) }
    it { expect(event).to validate_presence_of(:subtitle) }
    it { expect(event).to validate_presence_of(:event_start_date) }
    it { expect(event).to validate_presence_of(:event_end_date) }
    it { expect(event).to validate_presence_of(:description) }
  end
end
