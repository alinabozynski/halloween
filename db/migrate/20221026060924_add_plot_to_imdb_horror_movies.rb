class AddPlotToImdbHorrorMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :imdb_horror_movies, :plot, :text
  end
end
