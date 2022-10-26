class RemoveTextPlotFromImdbHorrorMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :imdb_horror_movies, :plot, :text
  end
end
