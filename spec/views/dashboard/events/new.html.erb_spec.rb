# frozen_string_literal: true

describe 'dashboard/events/new.html.erb' do
  it 'displays event form' do
    assign(:event, Event.new)

    render partial: 'form'

    expect(rendered).to include('Create an Event', 'Event Title', 'Event Subtitle', 'Event Description')
  end

  it 'displays error messages' do
    assign(:event, Event.create(title: '', description: '', subtitle: '', event_start_date: '', event_end_date: ''))

    render partial: 'form'

    expect(rendered).to include('Title can&#39;t be blank')
    expect(rendered).to include('Subtitle can&#39;t be blank')
    expect(rendered).to include('Description can&#39;t be blank')
    expect(rendered).to include('Event start date can&#39;t be blank')
    expect(rendered).to include('Event end date can&#39;t be blank')
  end
end
