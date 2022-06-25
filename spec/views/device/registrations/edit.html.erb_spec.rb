# frozen_string_literal: true

require 'rails_helper'
require 'support/devise_invalid_user_helper'

describe 'devise/registrations/edit.html.erb' do
  let(:user) { create(:user) }

  before { sign_in user }

  context 'when editing user' do
    it 'displays edit form' do
      view.class.include DeviseInvalidUserHelper

      render

      expect(rendered).to include('Personal info', 'Change password', 'New Password', 'Confirm Pasword', 'Update',
                                  'Cancel my account')
    end

    it 'renders error messages' do
      view.class.include DeviseInvalidUserHelper

      render

      %w[first_name last_name email password].each do |field_name|
        expect(rendered).to include("#{field_name.humanize} can&#39;t be blank")
      end
    end
  end
end
