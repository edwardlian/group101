# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Create Dummy Data!"
puts "Create Account*1, Group*10, Post*20"

create_account = User.create [name: "Example", email: "example@gmail.com", password: "12345678", password_confirmation: "12345678"]

create_groups = for i in 1..10 do
  Group.create! [title: "Group No.#{i}", description: "種子的第 #{i} 個討論版", user_id: "1"]

  for j in 1..20 do
    Post.create! [group_id: "#{i}", content: "種子的第 #{j} 個留言", user_id: "1"]
  end
end
