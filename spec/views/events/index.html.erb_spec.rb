# frozen_string_literal: true

require 'rails_helper'

describe 'events/index.html.erb' do
  let!(:events) { create_list :event, 3 }

  before do
    assign(:events, events)
    assign(:pagy, Pagy.new(count: 10, page: 1))
  end

  context 'with events' do
    it 'displays event partial' do
      render partial: 'event', collection: events
      events.each do |event|
        expect(rendered).to include(event_path(event), event.title, event.subtitle, event.description)
      end
    end
  end
end
