# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
    first_name { Faker::Name.name }
    last_name { Faker::Name.last_name }
  end
end
