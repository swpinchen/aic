# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts 'Cleaning up db...'

Clinic.destroy_all
puts 'All clinics deleted.'
User.destroy_all
puts 'All users deleted.'

puts 'Creating users...'
user_email_list = ['s_pinchen@hotmail.com', 'ivanwilf@gmail.com', 'natasha030320@gmail.com', 'hhknight@me.com']
user_list = []

user_email_list.length.times do |index|
  user = User.create!(email: user_email_list[index], password: "password")
  user_list << user
  puts "User #{user.id}: #{user.email} was created!"
end

puts 'Creating clinics...'
20.times do |index|
  clinic = Clinic.create!(name: "#{Faker::Address.unique.community} Clinic",
  location: Faker::Address.unique.city,
  #Open hours needs to be improved.  A quick implementation for now.
  open_hours: "#{Faker::Time.backward(days: 0, period: :morning, format: :short)} - #{Faker::Time.forward(days: 0, period: :morning)}",
  description: Faker::Lorem.paragraph(sentence_count: 4),
  specialities: nil,
  user: user_list.sample
)
puts "#{index+1}. Id:#{clinic.id} - #{clinic.name} was created!"
end
