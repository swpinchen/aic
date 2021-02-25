# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
image_array = [
    'https://images.unsplash.com/photo-1519494026892-80bbd2d6fd0d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2535&q=80',
    'https://images.unsplash.com/photo-1580281780460-82d277b0e3f8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2700&q=80',
    'https://images.unsplash.com/photo-1564732278233-674355414c2c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2702&q=80',
    'https://images.unsplash.com/photo-1575654402689-8f45b1ee6179?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2720&q=80',
    'https://images.unsplash.com/photo-1613377512409-59c33c10c821?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2700&q=80',
    'https://images.unsplash.com/photo-1598448251941-ae4dd47dba33?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2700&q=80',
    'https://images.unsplash.com/photo-1516549655169-df83a0774514?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2700&q=80',
    'https://images.unsplash.com/photo-1451153378752-16ef2b36ad05?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2547&q=80',
    'https://images.unsplash.com/photo-1596079890744-c1a0462d0975?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2551&q=80',
    'https://images.unsplash.com/photo-1524758631624-e2822e304c36?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=3750&q=80',
    'https://images.unsplash.com/photo-1497366216548-37526070297c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2301&q=80',
    'https://images.unsplash.com/photo-1564540574859-0dfb63985953?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2700&q=80',
    'https://images.unsplash.com/photo-1497366754035-f200968a6e72?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2301&q=80',
    'https://images.unsplash.com/photo-1497366811353-6870744d04b2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2301&q=80',
    'https://images.unsplash.com/photo-1538108149393-fbbd81895907?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2800&q=80',
    'https://images.unsplash.com/photo-1497110781426-d735b42692bb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2770&q=80',
    'https://images.unsplash.com/photo-1586773860418-d37222d8fce3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2704&q=80',
    'https://images.unsplash.com/photo-1581360742512-021d5b2157d8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2000&q=80',
    'https://images.unsplash.com/photo-1579684385127-1ef15d508118?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2000&q=80',
    'https://images.unsplash.com/photo-1530497610245-94d3c16cda28?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80',
    'https://images.unsplash.com/photo-1599700403969-f77b3aa74837?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'
]

languages_array = [
  'Englisn',
  'Spanish',
  'Italian',
  'Chinese',
  'Korean',
  'French',
  'Portuguese',
  'Russian'
]

specialities_array = [
  'dermatology',
  'paediatrics',
  'dentristry',
  'surgery',
  'radiology',
  'neurology',
  'pathology',
  'general practice'
]

wards_array = [
  "Arakawa",
  "Meguro",
  "Shinagawa",
  "Taito",
  "Shibuya",
  "Shinjuku",
  "Kita",
  "Koto",
  "Adachi",
  "Edogawa",
  "Minato",
  "Toshima"
]

puts 'Cleaning up db...'

Review.destroy_all
puts 'All reviews deleted'
Booking.destroy_all
puts 'All bookings deleted'
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

puts 'Creating one real clinic...'

clinic = Clinic.create!(name: "Real clinic",
  location: "Meguro 1-2-4, Meguro, Tokyo",
  open_hours: "#{Faker::Time.backward(days: 0, period: :morning, format: :short)} - #{Faker::Time.forward(days: 0, period: :morning)}",
  description: "We are an amazing clinic. More than half the patients that come here end up getting better. We are located in the heart of Tokyo!",
  # specialities: "general practice",
  user: user_list.sample,
  )
file = URI.open('https://images.unsplash.com/photo-1551601651-2a8555f1a136?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1672&q=80')
clinic.photo.attach(io: file, filename: 'first.png', content_type: 'image/png')
#adding five reviews to real clinic
puts 'creating review for real clinic'
5.times do
  review = Review.create!(rating: [1,2,3,4,5].sample, content: Faker::Hipster.sentence, clinic: clinic, user: user_list.sample)
end

puts 'Creating clinics...'
image_array.each_with_index do |url, index|
  puts url
  file = URI.open(url)

  clinic = Clinic.create!(name: "#{Faker::Address.unique.community} Clinic",
  location: "#{wards_array.sample}, Tokyo",
  #Open hours needs to be improved.  A quick implementation for now.
  open_hours: "#{Faker::Time.backward(days: 0, period: :morning, format: :short)} - #{Faker::Time.forward(days: 0, period: :morning)}",
  description: Faker::Lorem.paragraph(sentence_count: 4),
  user: user_list.sample
  )
  clinic.photo.attach(io: file, filename: 'clinic.png', content_type: 'image/png')
  [1,2].sample.times do
    clinic.speciality_list.add(specialities_array.sample)
  end
  [1,2].sample.times do
    clinic.language_list.add(languages_array.sample)
  end
  clinic.save
  puts 'Creating reviews...'
  5.times do
    review = Review.create!(rating: [1,2,3,4,5].sample, content: Faker::Hipster.sentence, clinic: clinic, user: user_list.sample)
  end
puts "#{index+1}. Id:#{clinic.id} - #{clinic.name} was created!"
end
