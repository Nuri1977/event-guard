# frozen_string_literal: true

require 'spec_helper'

describe 'pages/home.html.erb' do
  context 'with rendered contact info' do
    before do
      assign(:events, (create_list :event, 7))
    end

    it 'renders the contact path and title' do
      render

      expect(rendered).to include('Get started', new_user_session_path)
    end

    it 'renders learn more button' do
      render

      expect(rendered).to include('Learn more')
    end

    it 'display an p selector with text events' do
      render

      expect(rendered).to have_selector('p', text: 'EVENTS')
    end

    it 'display an svg' do
      render

      expect(rendered).to have_selector('svg')
    end
  end
end
