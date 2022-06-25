# frozen_string_literal: true

require 'rails_helper'

describe Devise::Mailer, type: :mailer do # rubocop:disable RSpec/FilePath
  let(:user) { create :user, first_name: 'John', last_name: 'Doe', email: 'john_doe@example.com' }

  before do
    ActionMailer::Base.deliveries = []
    Devise.mailer = 'Devise::Mailer'
    Devise.mailer_sender = 'test@eventguard.com'
    user.send_reset_password_instructions
  end

  describe 'send reset password instructions' do
    let(:mail) { ActionMailer::Base.deliveries.last }

    it 'renders the headers' do
      expect(mail.subject).to eq('Reset password instructions')
      expect(mail.to).to eq(['john_doe@example.com'])
      expect(mail.from).to eq(['test@eventguard.com'])
    end
  end
end
