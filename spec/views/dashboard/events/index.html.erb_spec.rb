# frozen_string_literal: true

require 'rails_helper'

describe 'dashboard/events/index.html.erb' do
  let(:user) { create(:user) }
  let(:event) { create(:event, user: user) }

  before do
    assign(:events, [event])
  end

  context 'with dynamic content' do
    it 'display events' do
      render

      expect(rendered).to include(event.title, event.subtitle, event.description)
    end
  end
end
