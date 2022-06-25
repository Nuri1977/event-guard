# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    association :user
    title { Faker::Name.name }
    subtitle { Faker::Name.name }
    event_start_date { Faker::Date.forward(days: 23) }
    event_end_date { Faker::Date.forward(days: 26) }
    description { Faker::Lorem.paragraphs(number: 1).join('.') }
  end
end
