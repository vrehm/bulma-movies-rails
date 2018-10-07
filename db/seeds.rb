require 'csv'

CSV.foreach("#{Rails.root}/public/seed_data/movies_db.csv") do |row|
  m = Movie.create(title: row[1],
  description: row[2],
  release_date: row[4],
  movie_length: (row.dig(6) || "NA").to_s + ' min',
  rating: row[8].to_s)
  pp m
end
