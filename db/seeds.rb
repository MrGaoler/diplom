User.destroy_all
Post.destroy_all
100.times do |i|
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
