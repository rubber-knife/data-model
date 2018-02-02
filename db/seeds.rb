########## BEGIN ##########
########## SEED ##########

puts "== Begin seeding ==\n\n"

###

puts "=== Begin seeding users ==="

@submitter = User.create(first_name: 'Dave', last_name: 'Wallace', email: 'howling@fantods.ij', password: 'pumulis_sucks')
puts "-- User created with id: #{@submitter.id}"

@editor = User.create(first_name: 'Donald', last_name: 'Geddes', email: 'dev@rubberknife.ca', password: 'password')
puts "-- User created with id: #{@editor.id}"

puts "=== End seeding users ==="


puts "\n"


puts "=== Begin seeding submissions ==="

@ij = @submitter.submissions.create(title: 'Infinite Jest')
puts "-- Submission created with id: #{@ij.id}"

puts "=== End seeding submissions ==="


puts "\n"


puts "=== Begin seeding meta ==="

@meta = Metum.create(user: @editor, submission: @ij, read: true, evaluation: 'unsure')
puts "-- Meta created with id: #{@meta.id}"

puts "=== End seeding meta ==="


puts "\n"


puts "=== Begin seeding media ==="

@media = @ij.media.create(kind: 'prose', text: 'It’s of some interest that the lively arts of the millenial U.S.A. treat anhedonia and internal emptiness as hip and cool. It’s maybe the vestiges of the Romantic glorification of Weltschmerz, which means world-weariness or hip ennui. Maybe it’s the fact that most of the arts here are produced by world-weary and sophisticated older people and then consumed by younger people who not only consume art but study it for clues on how to be cool, hip - and keep in mind that, for kids and younger people, to be hip and cool is the same as to be admired and accepted and included and so Unalone. Forget so-called peer-pressure. It’s more like peer-hunger. No? We enter a spiritual puberty where we snap to the fact that the great transcendent horror is loneliness, excluded encagement in the self. Once we’ve hit this age, we will now give or take anything, wear any mask, to fit, be part-of, not be Alone, we young. The U.S. arts are our guide to inclusion. A how-to. We are shown how to fashion masks of ennui and jaded irony at a young age where the face is fictile enough to assume the shape of whatever it wears. And then it’s stuck there, the weary cynicism that saves us from gooey sentiment and unsophisticated naivete. Sentiment equals naïveté on this continent...')
puts "-- Media created with id: #{@media.id}"

puts "=== End seeding media ==="

###

puts "\n== End seeding ==\n"

########## END ##########
########## SEED ##########
