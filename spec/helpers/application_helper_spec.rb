# frozen_string_literal: true

require 'rails_helper'

describe ApplicationHelper do
  describe 'form field error messages' do
    it 'displays error messages' do
      expected_field = '<p class="text-sm text-red-600 p-1">Full name can&#39;t be blank</p>'

      contact = build(:contact, full_name: '')
      expect(contact).not_to be_valid
      expect(contact.errors.messages[:full_name]).to eq ["can't be blank"]
      expect(expected_field).to eq(field_has_error(:full_name, contact))
    end
  end
end
