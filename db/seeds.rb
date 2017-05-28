User.destroy_all
Post.destroy_all
Member.destroy_all
Image.destroy_all
Cms::StaticPage.destroy_all

10.times do |i|
  user = User.create(
    fname: "first#{i}",
    lname: "last#{i}",
    username: "username#{i}",
    email: "test#{i}@example.com",
    password: 'password'
  )
  user.posts.create(
    title: "Hello from #{user.id}",
    body: SecureRandom.hex,
    created_at: Time.now
  ).build_image.save

  print '.'
end

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
  print '.'
end

10.times do
  Member.create(
    full_name: Faker::Name.name,
    position: Faker::Job.field
  ).build_image.save
end
10.times do |i|
  services = Service.create!(
    name: Faker::Name.name,
    level: Faker::Demographic.race,
    description: Faker::Demographic.race
  ).build_image.save
end

about_page = Cms::AboutPage.load
about_page.description = Faker::Job.title
about_page.save


10.times do |i|
  services = Service.create!(
    name: Faker::Name.name,
    level: Faker::Demographic.race,
    description: Faker::Demographic.race
  ).build_image.save
end

services_page = Cms::ServicesPage.load
services_page.title = Faker::Job.title
services_page.description = Faker::Job.title
services_page.save

contacts_page = Cms::ContactsPage.load
contacts_page.phone = Faker::PhoneNumber.cell_phone
contacts_page.email = Faker::Internet.email
contacts_page.location = Faker::Address.street_address
contacts_page.work_time = Faker::Time.between(DateTime.now - 1, DateTime.now)
contacts_page.save

