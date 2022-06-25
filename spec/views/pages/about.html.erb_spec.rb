# frozen_string_literal: true

require 'spec_helper'

describe 'pages/about.html.erb' do
  it 'renders the contact to login' do
    render

    expect(rendered).to include('Get started', new_user_session_path)
  end
end
