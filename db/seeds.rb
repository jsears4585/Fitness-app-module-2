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
