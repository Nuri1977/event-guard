# frozen_string_literal: true

require 'rails_helper'

describe 'layouts/footer' do
  it 'displays footer icons' do
    render partial: 'layouts/footer'
    expect(rendered).to include('https://twitter.com', 'https://instagram.com', 'https://facebook.com', 'https://linkedin.com')
  end

  it 'displays phone, email and address name' do
    render partial: 'layouts/footer'
    expect(rendered).to include('Location', 'Email', 'Phone Number', 'https://www.google.com/maps',
                                'info@eventguard.com', '850-123-5021')
  end

  it 'render link for dashboard' do
    render partial: 'layouts/footer'
    expect(rendered).to include('Dashboard', dashboard_root_path)
  end
end
