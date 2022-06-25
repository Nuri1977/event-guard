# frozen_string_literal: true

require 'rails_helper'

describe 'dashboard/pages/home.html.erb' do
  it 'renders dashboard-home' do
    render
    expect(rendered).to include('Your Statistics for the last month')
  end
end
