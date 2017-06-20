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
