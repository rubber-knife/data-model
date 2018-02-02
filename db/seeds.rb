# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "=== Begin seeding users ==="

2.times do |i|
  u = User.create(first_name: "first#{i+1}", last_name: "last#{i+1}", email: "#{i+1}@email.com", password: 'password', role: "#{i}".to_i)
  puts "Created user with id: #{u.id}"
end

puts "=== End seeding users ==="

puts "\n\n"
