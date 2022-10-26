require 'csv'

Candy.destroy_all
Sugar.destroy_all

candy_file = Rails.root.join('db/candies.csv')
candy_data = File.read(candy_file)

candies = CSV.parse(candy_data, headers: true, encoding: 'iso-8859-1')

candies.each do |candy|
  sugar = Sugar.find_or_create_by(sugar_percentage: candy['sugarpercent'])

  Candy.create(
    name: candy['competitorname'],
    chocolate: candy['chocolate'],
    fruity: candy['fruity'],
    caramel: candy['caramel'],
    peanuty_almondy: candy['peanutyalmondy'],
    nougat: candy['nougat'],
    crisped_rice_wafer: candy['crispedricewafer'],
    hard: candy['hard'],
    bar: candy['bar'],
    sugar_percentage: Sugar.where(:sugar_percentage => sugar.sugar_percentage).first.sugar_percentage)
end

HalloweenMovie.destroy_all

halloween_movies_file = Rails.root.join('db/halloween_movies.csv')
halloween_movies_data = File.read(halloween_movies_file)

halloween_movies = CSV.parse(halloween_movies_data, headers: true)

halloween_movies.each do |halloween_movie|
  HalloweenMovie.create(
    title: halloween_movie['Movie'],
    image: halloween_movie['Image URL'])
end

ImdbHorrorMovie.destroy_all
ReleaseDate.destroy_all

imdb_movies_file = Rails.root.join('db/imdb_horror.csv')
imdb_movies_data = File.read(imdb_movies_file)

imdb_movies = CSV.parse(imdb_movies_data, headers: true)

imdb_movies.each do |imdb_movie|
  release = ReleaseDate.find_or_create_by(release_date: imdb_movie['Release Date'])

  ImdbHorrorMovie.create(
    title: imdb_movie['Title'],
    release_country: imdb_movie['Release Country'],
    rating: imdb_movie['Review Rating'],
    run_time: imdb_movie['Movie Run Time'],
    plot: imdb_movie['plot'],
    language: imdb_movie['Language'],
    release_date: ReleaseDate.where(:release_date => release.release_date).first.release_date)
end
    
