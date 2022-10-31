class AddGenresToImdbHorrorMovies < ActiveRecord::Migration[6.1]
  def change
    add_reference :imdb_horror_movies, :Genre, null: false, foreign_key: true, array: true, default: []
  end
end
