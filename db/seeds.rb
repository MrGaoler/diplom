User.destroy_all
Post.destroy_all
Member.destroy_all
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
  Member.create!(
    full_name: Faker::Name.name,
    position: Faker::Job.field
  )
end

about_page = Cms::AboutPage.load
about_page.description = Faker::Job.title
about_page.save
