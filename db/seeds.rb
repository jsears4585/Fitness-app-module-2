require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'activities.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
   t = ActivityDatum.new
   t.name = row['name']
   t.cph_130 = row['cph_130']
   t.cph_155 = row['cph_155']
   t.cph_180 = row['cph_180']
   t.cph_205 = row['cph_205']
   t.save
   puts "#{t.name} saved"
end

puts "There are now #{ActivityDatum.count} rows in the Activity Data table"

puts "Now for the other stuff >>>"

#<-------User 1 Seed--------->

User.create(username: "JS", first_name: "Jason", last_name: "Sears", city: "Philly", password: "abc", password_confirmation: "abc", email: "jsears4585@gmail.com", weight: 170, age: 29, admin: true)

puts "User created"

ActivityEntry.create(name: "Unicycling", minutes: 45, calories_burned: (352 * 0.75), user_id: 1, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Unicycling", minutes: 60, calories_burned: (352), user_id: 1, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Unicycling", minutes: 30, calories_burned: (352 * 0.5), user_id: 1, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Unicycling", minutes: 120, calories_burned: (352 * 2), user_id: 1, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Unicycling", minutes: 60, calories_burned: (352 * 1), user_id: 1, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Unicycling", minutes: 45, calories_burned: (352 * 0.75), user_id: 1, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Unicycling", minutes: 180, calories_burned: (352 * 3), user_id: 1, created_at: (DateTime.now - 1))

puts "Activity created"

Challenge.create(name: "This is a cool thing to do", rules: "Workout out literally all the time, cuz you should and it's awesome", start_date: (DateTime.now + 1), end_date: (DateTime.now + 8))

puts "Challenge created"

UsersChallenge.create(user_id: 1, challenge_id: 1)

puts "User-Challenge association created"

#<-------User 2 Seed--------->

User.create(username: "VZ", first_name: "Vera", last_name: "Zago", city: "Brooklyn", password: "abc", password_confirmation: "abc", email: "vera.zago@flatironschool.com", weight: 0, age: 0, admin: true, created_at: (DateTime.now - 30))

puts "User 2 created"

ActivityEntry.create(name: "Typing, computer data entry", minutes: 45, calories_burned: (106 * 0.75), user_id: 2, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 15))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 14))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 13))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 12))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 11))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 10))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 9))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 8))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Running, 5.2 mph, 11.5 minute mile,", minutes: 60, calories_burned: (633), user_id: 2, created_at: (DateTime.now))
ActivityEntry.create(name: "Children's games, hopscotch", minutes: 30, calories_burned: (352 * 0.5), user_id: 1, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Children's games, hopscotch", minutes: 30, calories_burned: (352 * 0.5), user_id: 1, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Children's games, hopscotch", minutes: 30, calories_burned: (352 * 0.5), user_id: 1, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Children's games, hopscotch", minutes: 30, calories_burned: (352 * 0.5), user_id: 1, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Children's games, hopscotch", minutes: 30, calories_burned: (352 * 0.5), user_id: 1, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Children's games, hopscotch", minutes: 30, calories_burned: (352 * 0.5), user_id: 1, created_at: (DateTime.now))

puts "User 2 Activity created"

Challenge.create(name: "Vera Rockstar Challenge", rules: "Party like rockstars while working out", start_date: (DateTime.now - 30), end_date: (DateTime.now - 1))
Challenge.create(name: "Y'all Ready for This?!", rules: "Serious exercise freaks", start_date: (DateTime.now), end_date: (DateTime.now + 30))

puts "User 2 Challenge created"
UsersChallenge.create(user_id: 2, challenge_id: 1)
UsersChallenge.create(user_id: 2, challenge_id: 2)
UsersChallenge.create(user_id: 2, challenge_id: 3)

puts "User 2 - User-Challenge association created"

#<-------User 3 Seed--------->

User.create(username: "RKO", first_name: "Rinda", last_name: "Ko", city: "Queens", password: "abc", password_confirmation: "abc", email: "rinda.ko@flatironschool.com", weight: 100, age: 25, admin: true, created_at: (DateTime.now - 15))

puts "User 3 created"

ActivityEntry.create(name: "Farming, feeding small animals", minutes: 60, calories_burned: (281), user_id: 3, created_at: (DateTime.now - 15))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 60, calories_burned: (281), user_id: 3, created_at: (DateTime.now - 14))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 45, calories_burned: (281 * 0.75), user_id: 3, created_at: (DateTime.now - 13))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 60, calories_burned: (281), user_id: 3, created_at: (DateTime.now - 12))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 60, calories_burned: (281), user_id: 3, created_at: (DateTime.now - 11))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 60, calories_burned: (281), user_id: 3, created_at: (DateTime.now - 10))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 45, calories_burned: (281 * 0.75), user_id: 3, created_at: (DateTime.now - 9))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 60, calories_burned: (281), user_id: 3, created_at: (DateTime.now - 8))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 60, calories_burned: (281), user_id: 3, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 60, calories_burned: (281), user_id: 3, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 60, calories_burned: (281), user_id: 3, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 60, calories_burned: (281), user_id: 3, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 45, calories_burned: (281 * 0.75), user_id: 3, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 60, calories_burned: (281), user_id: 3, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 60, calories_burned: (281), user_id: 3, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Farming, feeding small animals", minutes: 45, calories_burned: (281 * 0.75), user_id: 3, created_at: (DateTime.now))
ActivityEntry.create(name: "Bathing dog", minutes: 30, calories_burned: (246), user_id: 3, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Bathing dog", minutes: 60, calories_burned: (246 * 0.5), user_id: 3, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Bathing dog", minutes: 30, calories_burned: (246 * 0.5), user_id: 3, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Bathing dog", minutes: 60, calories_burned: (246), user_id: 3, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Bathing dog", minutes: 30, calories_burned: (246 * 0.5), user_id: 3, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Bathing dog", minutes: 45, calories_burned: (246 * 0.75), user_id: 3, created_at: (DateTime.now))

puts "User 3 Activity created"

Challenge.create(name: "Rinda's Awesome Animal Lover Challenge", rules: "Pet lots of animals and workout", start_date: (DateTime.now - 7), end_date: (DateTime.now + 21))


puts "User 3 Challenge created"
UsersChallenge.create(user_id: 3, challenge_id: 4)
UsersChallenge.create(user_id: 3, challenge_id: 2)

puts "User 3 - User-Challenge association created"

#<-------User 4 Seed--------->
User.create(username: "PrettyKitty", first_name: "Rachael", last_name: "Rocks", city: "Portland", password: "abc", password_confirmation: "abc", email: "racheal.fake@fake.com", weight: 100, age: 25, admin: false, created_at: (DateTime.now - 7))

puts "User 4 created"

ActivityEntry.create(name: "Forestry, ax chopping, fast", minutes: 60, calories_burned: (1003), user_id: 4, created_at: (DateTime.now))
ActivityEntry.create(name: "Forestry, ax chopping, fast", minutes: 60, calories_burned: (1003), user_id: 4, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Forestry, ax chopping, fast", minutes: 45, calories_burned: (1003 * 0.75), user_id: 4, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Forestry, ax chopping, fast", minutes: 60, calories_burned: (1003), user_id: 4, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Forestry, ax chopping, fast", minutes: 60, calories_burned: (1003), user_id: 4, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Horse grooming", minutes: 60, calories_burned: (354), user_id: 4, created_at: (DateTime.now))
ActivityEntry.create(name: "Horse grooming", minutes: 45, calories_burned: (354 * 0.75), user_id: 4, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Horse grooming", minutes: 60, calories_burned: (354), user_id: 4, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Horse grooming", minutes: 60, calories_burned: (354), user_id: 4, created_at: (DateTime.now - 3))

puts "User 4 Activity created"

UsersChallenge.create(user_id: 4, challenge_id: 4)

puts "User 4 - User-Challenge association created"

#<-------User 5 Seed--------->
User.create(username: "Johann The Man", first_name: "Johann", last_name: "The Man", city: "Queens", password: "abc", password_confirmation: "abc", email: "johann.fake@fake.com", weight: 160, age: 27, admin: false, created_at: (DateTime.now - 2))

puts "User 5 created"

ActivityEntry.create(name: "Gymnastics", minutes: 180, calories_burned: (281 * 3), user_id: 5, created_at: (DateTime.now))
ActivityEntry.create(name: "Gymnastics", minutes: 120, calories_burned: (281 * 2), user_id: 5, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Gymnastics", minutes: 45, calories_burned: (281 * 0.75), user_id: 5, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Gymnastics", minutes: 60, calories_burned: (281), user_id: 5, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Gymnastics", minutes: 120, calories_burned: (281 * 2), user_id: 5, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Fishing in stream, in waders", minutes: 60, calories_burned: (422), user_id: 5, created_at: (DateTime.now))
ActivityEntry.create(name: "Fishing in stream, in waders", minutes: 45, calories_burned: (422 * 0.75), user_id: 5, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Fishing in stream, in waders", minutes: 60, calories_burned: (422), user_id: 5, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Fishing in stream, in waders", minutes: 60, calories_burned: (422), user_id: 5, created_at: (DateTime.now - 3))

puts "User 5 Activity created"

Challenge.create(name: "Johann's Somersaut and Cartwheel Club", rules: "You've got to look styling while you do gymnastics. Also, we're going to build new AR iPhone apps for Gymastic enthusiasts.", start_date: (DateTime.now), end_date: (DateTime.now + 30))

puts "User 5 Challenge created"

UsersChallenge.create(user_id: 5, challenge_id: 5)
UsersChallenge.create(user_id: 5, challenge_id: 3)
UsersChallenge.create(user_id: 5, challenge_id: 1)

puts "User 5 - User-Challenge association created"

#<-------User 6 Seed--------->
User.create(username: "Toneloke", first_name: "Tony", last_name: "Goblygoop", city: "Compton", password: "abc", password_confirmation: "abc", email: "tony.fake@fake.com", weight: 170, age: 31, admin: false)

puts "User created"

ActivityEntry.create(name: "Skateboarding", minutes: 45, calories_burned: (352 * 0.75), user_id: 6, created_at: (DateTime.now - 30))
ActivityEntry.create(name: "Skateboarding", minutes: 60, calories_burned: (352), user_id: 6, created_at: (DateTime.now - 29))
ActivityEntry.create(name: "Skateboarding", minutes: 30, calories_burned: (352 * 0.5), user_id: 6, created_at: (DateTime.now - 28))
ActivityEntry.create(name: "Skateboarding", minutes: 120, calories_burned: (352 * 2), user_id: 6, created_at: (DateTime.now - 27))
ActivityEntry.create(name: "Skateboarding", minutes: 60, calories_burned: (352 * 1), user_id: 6, created_at: (DateTime.now - 26))
ActivityEntry.create(name: "Skateboarding, billiards", minutes: 45, calories_burned: (352 * 0.75), user_id: 6, created_at: (DateTime.now - 25))
ActivityEntry.create(name: "Skateboarding, billiards", minutes: 180, calories_burned: (352 * 3), user_id: 6, created_at: (DateTime.now - 24))
ActivityEntry.create(name: "Playing pool, billiards", minutes: 45, calories_burned: (176 * 0.75), user_id: 6, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Playing pool, billiards", minutes: 60, calories_burned: (176), user_id: 6, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Playing pool, billiards", minutes: 30, calories_burned: (176 * 0.5), user_id: 6, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Playing pool, billiards", minutes: 120, calories_burned: (176 * 2), user_id: 6, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Playing pool, billiards", minutes: 60, calories_burned: (176 * 1), user_id: 6, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Playing pool, billiards", minutes: 45, calories_burned: (176 * 0.75), user_id: 6, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Playing pool, billiards", minutes: 180, calories_burned: (176 * 3), user_id: 6, created_at: (DateTime.now - 1))

puts "Activity created"

UsersChallenge.create(user_id: 6, challenge_id: 2)
UsersChallenge.create(user_id: 6, challenge_id: 1)
UsersChallenge.create(user_id: 6, challenge_id: 5)

puts "User-Challenge association created"
