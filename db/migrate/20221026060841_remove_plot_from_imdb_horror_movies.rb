class RemovePlotFromImdbHorrorMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :imdb_horror_movies, :plot, :string
  end
end
