# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  { username: "mmyoji" },
  { username: "test-user-1" },
  { username: "test-user-2" },
].each do |attrs|
  User.create(attrs)
end

BODY = <<~TEXT
  Lorem ipsum dolor sit amet, consectetur adipiscing elit,
  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
  reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
  Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
  officia deserunt mollit anim id est laborum.
TEXT

User.find_each do |user|
  [
    { title: "hello",      body: BODY, published_at: 3.days.ago },
    { title: "world",      body: BODY, published_at: Time.current },
    { title: "i'm draft!", body: BODY },
  ].each do |attrs|
    Post.create(attrs.merge(user:  user))
  end
end
