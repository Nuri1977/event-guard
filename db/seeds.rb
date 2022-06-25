require 'faker'

User.create!(first_name: 'John',
             last_name: 'Doe', email: 'user@test.com', password: 'password')

10.times do
  faker_first_name = Faker::Name.first_name
  faker_last_name = Faker::Name.last_name
  faker_email = "#{faker_first_name.downcase}_#{faker_last_name.downcase}@test.com"
  User.create!(first_name: faker_first_name,
               last_name: faker_last_name,
               email: faker_email,
               password: 'password')

    5.times do
      Event.create!(title: Faker::Name.unique.name,
        subtitle: Faker::Lorem.sentence(word_count: 7),
        event_start_date: Faker::Time.between(from: Date.yesterday, to: Date.current),
        event_end_date: Faker::Time.between(from: Date.yesterday, to: Date.current),
        description: Faker::Lorem.sentence(word_count: 25),
        user_id: User.last.id)
    end
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?