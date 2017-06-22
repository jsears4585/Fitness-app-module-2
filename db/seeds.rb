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
ActivityEntry.create(name: "Children's games, hopscotch", minutes: 30, calories_burned: (352 * 0.5), user_id: 2, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Children's games, hopscotch", minutes: 30, calories_burned: (352 * 0.5), user_id: 2, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Children's games, hopscotch", minutes: 30, calories_burned: (352 * 0.5), user_id: 2, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Children's games, hopscotch", minutes: 30, calories_burned: (352 * 0.5), user_id: 2, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Children's games, hopscotch", minutes: 30, calories_burned: (352 * 0.5), user_id: 2, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Children's games, hopscotch", minutes: 30, calories_burned: (352 * 0.5), user_id: 2, created_at: (DateTime.now))

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

#<-------User 7 Seed--------->
User.create(username: "Quynh", first_name: "Quynh", last_name: "H", city: "Brooklyn", password: "abc", password_confirmation: "abc", email: "quynh.fake@fake.com", weight: 100, age: 31, admin: false)

puts "User created"

ActivityEntry.create(name: "Cycling, moderate", minutes: 45, calories_burned: (472 * 0.75), user_id: 7, created_at: (DateTime.now - 30))
ActivityEntry.create(name: "Cycling, moderate", minutes: 60, calories_burned: (472), user_id: 7, created_at: (DateTime.now - 29))
ActivityEntry.create(name: "Cycling, moderate", minutes: 30, calories_burned: (472 * 0.5), user_id: 7, created_at: (DateTime.now - 28))
ActivityEntry.create(name: "Cycling, moderate", minutes: 120, calories_burned: (472 * 2), user_id: 7, created_at: (DateTime.now - 27))
ActivityEntry.create(name: "Cycling, moderate", minutes: 60, calories_burned: (472 * 1), user_id: 7, created_at: (DateTime.now - 26))
ActivityEntry.create(name: "Cycling, moderate", minutes: 60, calories_burned: (472 * 1), user_id: 7, created_at: (DateTime.now - 26))
ActivityEntry.create(name: "Cycling, moderate", minutes: 180, calories_burned: (472 * 3), user_id: 7, created_at: (DateTime.now - 24))
ActivityEntry.create(name: "Cycling, moderate", minutes: 45, calories_burned: (472 * 0.75), user_id: 7, created_at: (DateTime.now - 23))
ActivityEntry.create(name: "Cycling, moderate", minutes: 60, calories_burned: (472), user_id: 7, created_at: (DateTime.now - 22))
ActivityEntry.create(name: "Cycling, moderate", minutes: 30, calories_burned: (472 * 0.5), user_id: 7, created_at: (DateTime.now - 21))
ActivityEntry.create(name: "Cycling, moderate", minutes: 120, calories_burned: (472 * 2), user_id: 7, created_at: (DateTime.now - 20))
ActivityEntry.create(name: "Cycling, moderate", minutes: 60, calories_burned: (472 * 1), user_id: 7, created_at: (DateTime.now - 19))
ActivityEntry.create(name: "Cycling, moderate", minutes: 60, calories_burned: (472 * 1), user_id: 7, created_at: (DateTime.now - 18))
ActivityEntry.create(name: "Cycling, moderate", minutes: 180, calories_burned: (472 * 3), user_id: 7, created_at: (DateTime.now - 17))
ActivityEntry.create(name: "Cycling, moderate", minutes: 45, calories_burned: (472 * 0.75), user_id: 7, created_at: (DateTime.now - 16))
ActivityEntry.create(name: "Cycling, moderate", minutes: 60, calories_burned: (472), user_id: 7, created_at: (DateTime.now - 15))
ActivityEntry.create(name: "Cycling, moderate", minutes: 30, calories_burned: (472 * 0.5), user_id: 7, created_at: (DateTime.now - 14))
ActivityEntry.create(name: "Cycling, moderate", minutes: 120, calories_burned: (472 * 2), user_id: 7, created_at: (DateTime.now - 13))
ActivityEntry.create(name: "Cycling, moderate", minutes: 60, calories_burned: (472 * 1), user_id: 7, created_at: (DateTime.now - 12))
ActivityEntry.create(name: "Cycling, moderate", minutes: 60, calories_burned: (472 * 1), user_id: 7, created_at: (DateTime.now - 11))
ActivityEntry.create(name: "Cycling, moderate", minutes: 180, calories_burned: (472 * 3), user_id: 7, created_at: (DateTime.now - 10))
ActivityEntry.create(name: "Cycling, moderate", minutes: 45, calories_burned: (472 * 0.75), user_id: 7, created_at: (DateTime.now - 9))
ActivityEntry.create(name: "Cycling, moderate", minutes: 60, calories_burned: (472), user_id: 7, created_at: (DateTime.now - 8))
ActivityEntry.create(name: "Cycling, moderate", minutes: 45, calories_burned: (472 * 0.75), user_id: 7, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Cycling, moderate", minutes: 60, calories_burned: (472), user_id: 7, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Cycling, moderate", minutes: 30, calories_burned: (472 * 0.5), user_id: 7, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Cycling, moderate", minutes: 120, calories_burned: (472 * 2), user_id: 7, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Cycling, moderate", minutes: 60, calories_burned: (472 * 1), user_id: 7, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Cycling, moderate", minutes: 45, calories_burned: (472 * 0.75), user_id: 7, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Cycling, moderate", minutes: 180, calories_burned: (472 * 3), user_id: 7, created_at: (DateTime.now - 1))

puts "Activity created"

UsersChallenge.create(user_id: 7, challenge_id: 2)
UsersChallenge.create(user_id: 7, challenge_id: 1)
UsersChallenge.create(user_id: 7, challenge_id: 5)

puts "User-Challenge association created"

#<-------User 8 Seed--------->
User.create(username: "Jazzman", first_name: "Mike", last_name: "Jazz", city: "Brooklyn", password: "abc", password_confirmation: "abc", email: "mike.fake@fake.com", weight: 160, age: 26, admin: false, created_at: (DateTime.now - 10))

puts "User 8 created"

ActivityEntry.create(name: "Jazzercise", minutes: 180, calories_burned: (422 * 3), user_id: 8, created_at: (DateTime.now))
ActivityEntry.create(name: "Jazzercise", minutes: 120, calories_burned: (422 * 2), user_id: 8, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Jazzercise", minutes: 45, calories_burned: (422 * 0.75), user_id: 8, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Jazzercise", minutes: 60, calories_burned: (422), user_id: 8, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Jazzercise", minutes: 120, calories_burned: (422 * 2), user_id: 8, created_at: (DateTime.now - 4))

puts "User 8 Activity created"

Challenge.create(name: "Mike's Jazzercise Challenge", rules: "Jazz and exercise", start_date: (DateTime.now - 5), end_date: (DateTime.now + 25))

puts "User 8 Challenge created"

UsersChallenge.create(user_id: 8, challenge_id: 6)
UsersChallenge.create(user_id: 8, challenge_id: 5)
UsersChallenge.create(user_id: 8, challenge_id: 1)

puts "User 8 - User-Challenge association created"

#<-------User 9 Seed--------->
User.create(username: "Kenny", first_name: "Kenny", last_name: "", city: "Nashville", password: "abc", password_confirmation: "abc", email: "kenny.fake@fake.com", weight: 160, age: 27, admin: false, created_at: (DateTime.now - 18))

puts "User 9 created"

ActivityEntry.create(name: "Soccer, playing", minutes: 180, calories_burned: (493 * 3), user_id: 9, created_at: (DateTime.now))
ActivityEntry.create(name: "Soccer, playing", minutes: 120, calories_burned: (493 * 2), user_id: 9, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Soccer, playing", minutes: 45, calories_burned: (493 * 0.75), user_id: 9, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Soccer, playing", minutes: 60, calories_burned: (493), user_id: 9, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Soccer, playing", minutes: 120, calories_burned: (493 * 2), user_id: 9, created_at: (DateTime.now - 4))

puts "User 9 Activity created"

UsersChallenge.create(user_id: 9, challenge_id: 6)
UsersChallenge.create(user_id: 9, challenge_id: 5)
UsersChallenge.create(user_id: 9, challenge_id: 1)

puts "User 9 - User-Challenge association created"

#<-------User 10 Seed--------->
User.create(username: "Larson", first_name: "Larson", last_name: "L", city: "Brooklyn", password: "abc", password_confirmation: "abc", email: "larson.fake@fake.com", weight: 160, age: 29, admin: false, created_at: (DateTime.now - 6))

puts "User 10 created"

ActivityEntry.create(name: "Basketball, shooting baskets", minutes: 180, calories_burned: (317 * 3), user_id: 10, created_at: (DateTime.now))
ActivityEntry.create(name: "Basketball, shooting baskets", minutes: 120, calories_burned: (317 * 2), user_id: 10, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Basketball, shooting baskets", minutes: 45, calories_burned: (317 * 0.75), user_id: 10, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Basketball, shooting baskets", minutes: 60, calories_burned: (317), user_id: 10, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Basketball, shooting baskets", minutes: 120, calories_burned: (317 * 2), user_id: 10, created_at: (DateTime.now - 4))

puts "User 10 Activity created"

UsersChallenge.create(user_id: 9, challenge_id: 5)


puts "User 10 - User-Challenge association created"

#<-------User 11 Seed--------->
User.create(username: "Chiliman", first_name: "Chris", last_name: "D", city: "Westchester", password: "abc", password_confirmation: "abc", email: "chris.fake@fake.com", weight: 160, age: 31, admin: false, created_at: (DateTime.now - 22))

puts "User 11 created"

ActivityEntry.create(name: "Weight lifting, body building, vigorous", minutes: 180, calories_burned: (422 * 3), user_id: 11, created_at: (DateTime.now))
ActivityEntry.create(name: "Weight lifting, body building, vigorous", minutes: 120, calories_burned: (422 * 2), user_id: 11, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Weight lifting, body building, vigorous", minutes: 45, calories_burned: (422 * 0.75), user_id: 11, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Weight lifting, body building, vigorous", minutes: 60, calories_burned: (422), user_id: 11, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Weight lifting, body building, vigorous", minutes: 120, calories_burned: (422 * 2), user_id: 11, created_at: (DateTime.now - 4))

puts "User 11 Activity created"

#<-------User 12 Seed--------->
User.create(username: "Corn", first_name: "Zach", last_name: "D", city: "Manhattan", password: "abc", password_confirmation: "abc", email: "zach.fake@fake.com", weight: 180, age: 18, admin: false, created_at: (DateTime.now - 44))

puts "User 12 created"

ActivityEntry.create(name: "Volleyball, beach", minutes: 180, calories_burned: (654 * 3), user_id: 12, created_at: (DateTime.now))
ActivityEntry.create(name: "Volleyball, beach", minutes: 120, calories_burned: (654 * 2), user_id: 12, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Volleyball, beach", minutes: 45, calories_burned: (654 * 0.75), user_id: 12, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Volleyball, beach", minutes: 60, calories_burned: (654), user_id: 12, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Volleyball, beach", minutes: 120, calories_burned: (654 * 2), user_id: 12, created_at: (DateTime.now - 4))

puts "User 12 Activity created"

UsersChallenge.create(user_id: 12, challenge_id: 6)
UsersChallenge.create(user_id: 12, challenge_id: 5)
UsersChallenge.create(user_id: 12, challenge_id: 1)

puts "User 12 - User-Challenge association created"

#<-------User 13 Seed--------->
User.create(username: "ChilltownJP", first_name: "JP", last_name: "P", city: "Hawaii", password: "abc", password_confirmation: "abc", email: "jp.fake@fake.com", weight: 161, age: 23, admin: false, created_at: (DateTime.now - 17))

puts "User 13 created"

ActivityEntry.create(name: "Surfing, body surfing or board surfing", minutes: 180, calories_burned: (211 * 3), user_id: 13, created_at: (DateTime.now))
ActivityEntry.create(name: "Surfing, body surfing or board surfing", minutes: 120, calories_burned: (211 * 2), user_id: 13, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Surfing, body surfing or board surfing", minutes: 45, calories_burned: (211 * 0.75), user_id: 13, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Surfing, body surfing or board surfing", minutes: 60, calories_burned: (211), user_id: 13, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Surfing, body surfing or board surfing", minutes: 120, calories_burned: (211 * 2), user_id: 13, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Surfing, body surfing or board surfing", minutes: 180, calories_burned: (211 * 3), user_id: 13, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Surfing, body surfing or board surfing", minutes: 120, calories_burned: (211 * 2), user_id: 13, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Surfing, body surfing or board surfing", minutes: 45, calories_burned: (211 * 0.75), user_id: 13, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Surfing, body surfing or board surfing", minutes: 60, calories_burned: (211), user_id: 13, created_at: (DateTime.now - 8))
ActivityEntry.create(name: "Surfing, body surfing or board surfing", minutes: 120, calories_burned: (211 * 2), user_id: 13, created_at: (DateTime.now - 9))
puts "User 13 Activity created"

UsersChallenge.create(user_id: 13, challenge_id: 6)
UsersChallenge.create(user_id: 13, challenge_id: 5)

puts "User 13 - User-Challenge association created"

#<-------User 14 Seed--------->
User.create(username: "GoAskPat", first_name: "Pat", last_name: "P", city: "New Jersey", password: "abc", password_confirmation: "abc", email: "pat.fake@fake.com", weight: 157, age: 27, admin: false, created_at: (DateTime.now - 12))

puts "User 14 created"

ActivityEntry.create(name: "Tae kwan do, martial arts", minutes: 180, calories_burned: (704 * 3), user_id: 14, created_at: (DateTime.now))
ActivityEntry.create(name: "Tae kwan do, martial arts", minutes: 120, calories_burned: (704 * 2), user_id: 14, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Tae kwan do, martial arts", minutes: 45, calories_burned: (704 * 0.75), user_id: 14, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Tae kwan do, martial arts", minutes: 60, calories_burned: (704), user_id: 14, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Tae kwan do, martial arts", minutes: 120, calories_burned: (704 * 2), user_id: 14, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Tae kwan do, martial arts", minutes: 180, calories_burned: (704 * 3), user_id: 14, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Tae kwan do, martial arts", minutes: 120, calories_burned: (704 * 2), user_id: 14, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Tae kwan do, martial arts", minutes: 45, calories_burned: (704 * 0.75), user_id: 14, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Tae kwan do, martial arts", minutes: 60, calories_burned: (704), user_id: 14, created_at: (DateTime.now - 8))
ActivityEntry.create(name: "Tae kwan do, martial arts", minutes: 120, calories_burned: (704 * 2), user_id: 14, created_at: (DateTime.now - 9))
puts "User 14 Activity created"

UsersChallenge.create(user_id: 14, challenge_id: 6)
UsersChallenge.create(user_id: 14, challenge_id: 5)

puts "User 14 - User-Challenge association created"

#<-------User 15 Seed--------->

User.create(username: "Pradeep", first_name: "Pradeep", last_name: "P", city: "Brooklyn", password: "abc", password_confirmation: "abc", email: "pradeep.fake@fake.com", weight: 157, age: 27, admin: false, created_at: (DateTime.now - 31))

puts "User 15 created"

ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 45, calories_burned: (232 * 0.75), user_id: 15, created_at: (DateTime.now - 30))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 60, calories_burned: (232), user_id: 15, created_at: (DateTime.now - 29))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 30, calories_burned: (232 * 0.5), user_id: 15, created_at: (DateTime.now - 28))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 120, calories_burned: (232 * 2), user_id: 15, created_at: (DateTime.now - 27))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 60, calories_burned: (232 * 1), user_id: 15, created_at: (DateTime.now - 26))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 60, calories_burned: (232 * 1), user_id: 15, created_at: (DateTime.now - 26))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 180, calories_burned: (232 * 3), user_id: 15, created_at: (DateTime.now - 24))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 45, calories_burned: (232 * 0.75), user_id: 15, created_at: (DateTime.now - 23))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 60, calories_burned: (232), user_id: 15, created_at: (DateTime.now - 22))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 30, calories_burned: (232 * 0.5), user_id: 15, created_at: (DateTime.now - 21))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 120, calories_burned: (232 * 2), user_id: 15, created_at: (DateTime.now - 20))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 60, calories_burned: (232 * 1), user_id: 15, created_at: (DateTime.now - 19))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 60, calories_burned: (232 * 1), user_id: 15, created_at: (DateTime.now - 18))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 180, calories_burned: (232 * 3), user_id: 15, created_at: (DateTime.now - 17))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 45, calories_burned: (232 * 0.75), user_id: 15, created_at: (DateTime.now - 16))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 60, calories_burned: (232), user_id: 15, created_at: (DateTime.now - 15))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 30, calories_burned: (232 * 0.5), user_id: 15, created_at: (DateTime.now - 14))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 120, calories_burned: (232 * 2), user_id: 15, created_at: (DateTime.now - 13))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 60, calories_burned: (232 * 1), user_id: 15, created_at: (DateTime.now - 12))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 60, calories_burned: (232 * 1), user_id: 15, created_at: (DateTime.now - 11))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 180, calories_burned: (232 * 3), user_id: 15, created_at: (DateTime.now - 10))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 45, calories_burned: (232 * 0.75), user_id: 15, created_at: (DateTime.now - 9))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 60, calories_burned: (232), user_id: 15, created_at: (DateTime.now - 8))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 45, calories_burned: (232 * 0.75), user_id: 15, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 60, calories_burned: (232), user_id: 15, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 30, calories_burned: (232 * 0.5), user_id: 15, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 120, calories_burned: (232 * 2), user_id: 15, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 60, calories_burned: (232 * 1), user_id: 15, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 45, calories_burned: (232 * 0.75), user_id: 15, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Walking 3.0 mph, moderate", minutes: 180, calories_burned: (232 * 3), user_id: 15, created_at: (DateTime.now - 1))
puts "User 15 Activity created"

UsersChallenge.create(user_id: 15, challenge_id: 4)

puts "User 15 - User-Challenge association created"

#<-------User 16 Seed--------->

User.create(username: "Natasha", first_name: "Natasha", last_name: "P", city: "Austin", password: "abc", password_confirmation: "abc", email: "natasha.fake@fake.com", weight: 115, age: 27, admin: false, created_at: (DateTime.now - 3))

puts "User 16 created"

ActivityEntry.create(name: "Water polo", minutes: 60, calories_burned: (590 * 1), user_id: 16, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Water polo", minutes: 45, calories_burned: (590 * 0.75), user_id: 16, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Water polo", minutes: 180, calories_burned: (590 * 3), user_id: 16, created_at: (DateTime.now - 1))
puts "User 16 Activity created"

UsersChallenge.create(user_id: 16, challenge_id: 4)

puts "User 16 - User-Challenge association created"

#<-------User 17 Seed--------->
User.create(username: "GardenGuy", first_name: "Garren", last_name: "P", city: "Brooklyn", password: "abc", password_confirmation: "abc", email: "garren.fake@fake.com", weight: 150, age: 26, admin: false)

puts "User 17 created"

ActivityEntry.create(name: "Watering lawn or garden", minutes: 45, calories_burned: (89 * 0.75), user_id: 17, created_at: (DateTime.now - 30))
ActivityEntry.create(name: "Watering lawn or garden", minutes: 60, calories_burned: (89), user_id: 17, created_at: (DateTime.now - 29))
ActivityEntry.create(name: "Watering lawn or garden", minutes: 30, calories_burned: (89 * 0.5), user_id: 17, created_at: (DateTime.now - 28))
ActivityEntry.create(name: "Watering lawn or garden", minutes: 120, calories_burned: (89 * 2), user_id: 17, created_at: (DateTime.now - 27))
ActivityEntry.create(name: "Watering lawn or garden", minutes: 60, calories_burned: (89 * 1), user_id: 17, created_at: (DateTime.now - 26))
ActivityEntry.create(name: "Watering lawn or garden, billiards", minutes: 45, calories_burned: (89 * 0.75), user_id: 17, created_at: (DateTime.now - 25))
ActivityEntry.create(name: "Watering lawn or garden, billiards", minutes: 180, calories_burned: (89 * 3), user_id: 17, created_at: (DateTime.now - 24))
ActivityEntry.create(name: "Weeding, cultivating garden", minutes: 45, calories_burned: (266 * 0.75), user_id: 17, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Weeding, cultivating garden", minutes: 60, calories_burned: (266), user_id: 17, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Weeding, cultivating garden", minutes: 30, calories_burned: (266 * 0.5), user_id: 17, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Weeding, cultivating garden", minutes: 120, calories_burned: (266 * 2), user_id: 17, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Weeding, cultivating garden", minutes: 60, calories_burned: (266 * 1), user_id: 17, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Weeding, cultivating garden", minutes: 45, calories_burned: (266 * 0.75), user_id: 17, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Weeding, cultivating garden", minutes: 180, calories_burned: (266 * 3), user_id: 17, created_at: (DateTime.now - 1))

puts "User 17 Activity created"

UsersChallenge.create(user_id: 17, challenge_id: 2)
UsersChallenge.create(user_id: 17, challenge_id: 1)
UsersChallenge.create(user_id: 17, challenge_id: 5)

puts "User 17 User-Challenge association created"

#<-------User 18 Seed--------->
User.create(username: "FSU4ever", first_name: "Sarah", last_name: "S", city: "Tallahassee", password: "abc", password_confirmation: "abc", email: "sarah.fake@fake.com", weight: 120, age: 25, admin: false, created_at: (DateTime.now - 7))

puts "User 18 created"

ActivityEntry.create(name: "Fencing", minutes: 45, calories_burned: (354 * 0.75), user_id: 18, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Fencing", minutes: 60, calories_burned: (354), user_id: 18, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Fencing", minutes: 30, calories_burned: (354 * 0.5), user_id: 18, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Fencing", minutes: 120, calories_burned: (354 * 2), user_id: 18, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Fencing", minutes: 60, calories_burned: (354 * 1), user_id: 18, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Fencing", minutes: 45, calories_burned: (354 * 0.75), user_id: 18, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Fencing", minutes: 180, calories_burned: (354 * 3), user_id: 18, created_at: (DateTime.now - 1))

puts "User 18 Activity created"

UsersChallenge.create(user_id: 18, challenge_id: 1)

puts "User 18 User-Challenge association created"

#<-------User 19 Seed--------->
User.create(username: "Manda", first_name: "Manda", last_name: "L", city: "Lower East Side", password: "abc", password_confirmation: "abc", email: "manda.fake@fake.com", weight: 115, age: 25, admin: false, created_at: (DateTime.now - 10))

puts "User 19 created"

ActivityEntry.create(name: "Kick boxing", minutes: 180, calories_burned: (590 * 3), user_id: 19, created_at: (DateTime.now))
ActivityEntry.create(name: "Kick boxing", minutes: 120, calories_burned: (590 * 2), user_id: 19, created_at: (DateTime.now - 1))
ActivityEntry.create(name: "Kick boxing", minutes: 45, calories_burned: (590 * 0.75), user_id: 19, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Kick boxing", minutes: 60, calories_burned: (590), user_id: 19, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Kick boxing", minutes: 120, calories_burned: (590 * 2), user_id: 19, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Kick boxing", minutes: 180, calories_burned: (590 * 3), user_id: 19, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Kick boxing", minutes: 120, calories_burned: (590 * 2), user_id: 19, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Kick boxing", minutes: 45, calories_burned: (590 * 0.75), user_id: 19, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Kick boxing", minutes: 60, calories_burned: (590), user_id: 19, created_at: (DateTime.now - 8))
ActivityEntry.create(name: "Kick boxing", minutes: 120, calories_burned: (590 * 2), user_id: 19, created_at: (DateTime.now - 9))
puts "User 19 Activity created"

#<-------User 20 Seed--------->
User.create(username: "Mirbat", first_name: "Mirna", last_name: "L", city: "Queens", password: "abc", password_confirmation: "abc", email: "mirna.fake@fake.com", weight: 125, age: 25, admin: false, created_at: (DateTime.now - 32))

puts "User 20 created"

ActivityEntry.create(name: "Badminton", minutes: 45, calories_burned: (266 * 0.75), user_id: 20, created_at: (DateTime.now - 30))
ActivityEntry.create(name: "Badminton", minutes: 60, calories_burned: (266), user_id: 20, created_at: (DateTime.now - 29))
ActivityEntry.create(name: "Badminton", minutes: 30, calories_burned: (266 * 0.5), user_id: 20, created_at: (DateTime.now - 28))
ActivityEntry.create(name: "Badminton", minutes: 120, calories_burned: (266 * 2), user_id: 20, created_at: (DateTime.now - 27))
ActivityEntry.create(name: "Badminton", minutes: 60, calories_burned: (266 * 1), user_id: 20, created_at: (DateTime.now - 26))
ActivityEntry.create(name: "Badminton", minutes: 60, calories_burned: (266 * 1), user_id: 20, created_at: (DateTime.now - 26))
ActivityEntry.create(name: "Badminton", minutes: 180, calories_burned: (266 * 3), user_id: 20, created_at: (DateTime.now - 24))
ActivityEntry.create(name: "Badminton", minutes: 45, calories_burned: (266 * 0.75), user_id: 20, created_at: (DateTime.now - 23))
ActivityEntry.create(name: "Badminton", minutes: 60, calories_burned: (266), user_id: 20, created_at: (DateTime.now - 22))
ActivityEntry.create(name: "Badminton", minutes: 30, calories_burned: (266 * 0.5), user_id: 20, created_at: (DateTime.now - 21))
ActivityEntry.create(name: "Badminton", minutes: 120, calories_burned: (266 * 2), user_id: 20, created_at: (DateTime.now - 20))
ActivityEntry.create(name: "Badminton", minutes: 60, calories_burned: (266 * 1), user_id: 20, created_at: (DateTime.now - 19))
ActivityEntry.create(name: "Badminton", minutes: 60, calories_burned: (266 * 1), user_id: 20, created_at: (DateTime.now - 18))
ActivityEntry.create(name: "Badminton", minutes: 180, calories_burned: (266 * 3), user_id: 20, created_at: (DateTime.now - 17))
ActivityEntry.create(name: "Badminton", minutes: 45, calories_burned: (266 * 0.75), user_id: 20, created_at: (DateTime.now - 16))
ActivityEntry.create(name: "Badminton", minutes: 60, calories_burned: (266), user_id: 20, created_at: (DateTime.now - 15))
ActivityEntry.create(name: "Badminton", minutes: 30, calories_burned: (266 * 0.5), user_id: 20, created_at: (DateTime.now - 14))
puts "User 20 Activity created"

UsersChallenge.create(user_id: 20, challenge_id: 2)
UsersChallenge.create(user_id: 20, challenge_id: 1)
UsersChallenge.create(user_id: 20, challenge_id: 5)

puts "User 20 User-Challenge association created"

#<-------User 21 Seed--------->
User.create(username: "MITbound", first_name: "Jared", last_name: "J", city: "Manhattan", password: "abc", password_confirmation: "abc", email: "jared.fake@fake.com", weight: 145, age: 25, admin: false, created_at: (DateTime.now - 9))

puts "User 21 created"

ActivityEntry.create(name: "Crew, sculling, rowing, competition", minutes: 45, calories_burned: (708 * 0.75), user_id: 21, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Crew, sculling, rowing, competition", minutes: 60, calories_burned: (708), user_id: 21, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Crew, sculling, rowing, competition", minutes: 30, calories_burned: (708 * 0.5), user_id: 21, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Crew, sculling, rowing, competition", minutes: 120, calories_burned: (708 * 2), user_id: 21, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Crew, sculling, rowing, competition", minutes: 60, calories_burned: (708 * 1), user_id: 21, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Crew, sculling, rowing, competition", minutes: 45, calories_burned: (708 * 0.75), user_id: 21, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Crew, sculling, rowing, competition", minutes: 180, calories_burned: (708 * 3), user_id: 21, created_at: (DateTime.now - 1))

puts "User 21 Activity created"

UsersChallenge.create(user_id: 21, challenge_id: 3)

puts "User 21 User-Challenge association created"

#<-------User 22 Seed--------->
User.create(username: "Lili", first_name: "Lili", last_name: "L", city: "Manhattan", password: "abc", password_confirmation: "abc", email: "lili.fake@fake.com", weight: 110, age: 25, admin: false, created_at: (DateTime.now - 11))

puts "User 22 created"

ActivityEntry.create(name: "Racquetball, playing", minutes: 60, calories_burned: (413 * 1), user_id: 22, created_at: (DateTime.now - 11))
ActivityEntry.create(name: "Snorkeling", minutes: 180, calories_burned: (295 * 3), user_id: 22, created_at: (DateTime.now - 10))
ActivityEntry.create(name: "Racquetball, playing", minutes: 45, calories_burned: (413 * 0.75), user_id: 22, created_at: (DateTime.now - 9))
ActivityEntry.create(name: "Snorkeling", minutes: 60, calories_burned: (295), user_id: 22, created_at: (DateTime.now - 8))
ActivityEntry.create(name: "Racquetball, playing", minutes: 45, calories_burned: (413 * 0.75), user_id: 22, created_at: (DateTime.now - 7))
ActivityEntry.create(name: "Snorkeling", minutes: 60, calories_burned: (295), user_id: 22, created_at: (DateTime.now - 6))
ActivityEntry.create(name: "Racquetball, playing", minutes: 30, calories_burned: (413 * 0.5), user_id: 22, created_at: (DateTime.now - 5))
ActivityEntry.create(name: "Snorkeling", minutes: 120, calories_burned: (295 * 2), user_id: 22, created_at: (DateTime.now - 4))
ActivityEntry.create(name: "Racquetball, playing", minutes: 60, calories_burned: (413 * 1), user_id: 22, created_at: (DateTime.now - 3))
ActivityEntry.create(name: "Snorkeling", minutes: 45, calories_burned: (295 * 0.75), user_id: 22, created_at: (DateTime.now - 2))
ActivityEntry.create(name: "Racquetball, playing", minutes: 180, calories_burned: (413 * 3), user_id: 22, created_at: (DateTime.now - 1))
puts "User 22 Activity created"

UsersChallenge.create(user_id: 22, challenge_id: 4)
puts "User 22 User-Challenge association created"

puts "Completed Seeding the DB with 22 Users"
