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

halloween_movies_file = Rails.root.join('db/halloween_movies.csv')
halloween_movies_data = File.read(halloween_movies_file)

halloween_movies = CSV.parse(halloween_movies_data, headers: true)

halloween_movies.each do |halloween_movie|
  HalloweenMovie.create(
    title: halloween_movie['Movie'],
    image: halloween_movie['Image URL'])
end
