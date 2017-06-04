unless Rails.env.production?
  Rails.application.eager_load!
  ApplicationRecord.descendants.each(&:destroy_all)

  puts 'Всі дані з бази було щойно видалено'
end

times_count = 10

user = User.create(
  fname: 'author',
  lname: 'last',
  username: 'username',
  email: 'author@example.com',
  password: 'password'
)

times_count.times do
  user.posts.create(
    title: "Hello from #{user.id}",
    body: SecureRandom.hex,
    created_at: Time.now
  ).build_image.save
  Member.create(
    full_name: Faker::Name.name,
    position: Faker::Job.field
  ).build_image.save

  Service.create(
    name: Faker::Name.name,
    level: Faker::Demographic.race,
    duration: Faker::Number.digit,
    description: Faker::Demographic.race
  ).build_image.save
end
puts "#{times_count} постів, членів компанії та сервісів було створено"

# create user with different roles
User::ROLES.each do |role_name|
  User.create(
    fname: role_name,
    lname: role_name,
    username: role_name,
    email: "#{role_name}@example.com",
    password: 'password',
    role: role_name
  )
end
puts 'Створено по юзеру з унікальною ролью'

puts 'Створення статичних сторінок: '

about_page = Cms::AboutPage.load
about_page.description = Faker::Job.title
about_page.save
puts '1. about page'

services_page = Cms::ServicesPage.load
services_page.title = Faker::Job.title
services_page.description = Faker::Job.title
services_page.save

puts '2. services page'

contacts_page = Cms::ContactsPage.load
contacts_page.phone = Faker::PhoneNumber.cell_phone
contacts_page.email = Faker::Internet.email
contacts_page.location = Faker::Address.street_address
contacts_page.work_time = '09:00 - 18:00'
contacts_page.save

puts '3. contacts page'
