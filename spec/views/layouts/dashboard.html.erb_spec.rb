# frozen_string_literal: true

require 'rails_helper'

describe 'layouts/dashboard.html.erb' do
  let(:user) { create(:user) }

  before { sign_in user }

  it 'renders left sidebar' do
    render

    expect(rendered).to include("Welcome back, #{user.full_name}")
    expect(rendered).to have_link('Home', href: dashboard_root_path)
    expect(rendered).to have_link('Create an event', href: new_dashboard_event_path)
    expect(rendered).to have_link('My events', href: dashboard_events_path)
    expect(rendered).to have_link('All events', href: '#')
    expect(rendered).to have_link('Account', href: edit_user_registration_path)
  end

  it 'renders link paths' do
    render

    expect(rendered).to include('Logout', destroy_user_session_path)
    expect(rendered).to include('Edit Profile', edit_user_registration_path)
  end

  it 'displays dashboard avatar' do
    render
    expect(rendered).to have_css("img[src*='dashboard-avatar']")
  end
end
