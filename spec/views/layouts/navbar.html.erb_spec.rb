# frozen_string_literal: true

require 'rails_helper'

describe 'navbar.html.erb' do
  before { sign_in create(:user) }

  it 'renders the navbar' do
    render partial: 'layouts/navbar'

    expect(rendered).to include('Dashboard', dashboard_root_path)
  end

  it 'renders localized navbar' do
    render partial: 'layouts/navbar'

    expect(rendered).to include(t('layouts.navbar.events'))
    expect(rendered).to include(t('layouts.navbar.contact'))
    expect(rendered).to include(t('layouts.navbar.about'))
  end
end
