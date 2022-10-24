class AddReleaseDateToImdbHorrorMovies < ActiveRecord::Migration[6.1]
  def change
    add_reference :imdb_horror_movies, :release_date, null: false, foreign_key: true
  end
end
