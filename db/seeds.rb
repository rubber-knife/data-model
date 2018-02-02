# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

########## BEGIN ##########
########## SEED ##########

puts "== Begin seeding ==\n\n"

########## SEED ##########
########## USERS ##########

puts "=== Begin seeding users ==="

@submitter = User.create(first_name: 'Dave', last_name: 'Wallace', email: 'howling@fantods.ij', password: 'pumulis_sucks')
puts "-- User created with id: #{@submitter.id}"

@editor = User.create(first_name: 'Donald', last_name: 'Geddes', email: 'dev@rubberknife.ca', password: 'password')
puts "-- User created with id: #{@editor.id}"

puts "=== End seeding users ==="

########## END ##########
########## USERS ##########

puts "\n"

########## SEED ##########
########## SUBMISSIONS ##########

puts "=== Begin seeding submissions ==="

@ij = @submitter.submissions.create(title: 'Infinite Jest')
puts "-- Submission created with id: #{@ij.id}"

puts "=== End seeding submissions ==="

########## END ##########
########## SUBMISSIONS ##########

puts "\n"

########## SEED ##########
########## META ##########

puts "=== Begin seeding meta ==="

@meta = Metum.create(user: @editor, submission: @ij, read: true, evaluation: 'unsure')
puts "-- Meta created with id: #{@meta.id}"

puts "=== End seeding meta ==="

########## END ##########
########## META ##########



puts "\n== End seeding ==\n"

########## END ##########
########## SEED ##########
