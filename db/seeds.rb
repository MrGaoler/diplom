User.destroy_all
Post.destroy_all
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
  )
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
end
