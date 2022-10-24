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
    
