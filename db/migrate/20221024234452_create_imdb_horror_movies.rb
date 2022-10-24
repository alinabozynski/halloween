class CreateImdbHorrorMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :imdb_horror_movies do |t|
      t.string :title
      t.string :release_country
      t.decimal :rating
      t.string :run_time
      t.string :plot
      t.string :language

      t.timestamps
    end
  end
end
