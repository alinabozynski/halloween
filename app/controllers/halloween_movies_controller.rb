class HalloweenMoviesController < ApplicationController
  def index
    @halloween_movies = HalloweenMovie.all
  end

  def show
    @halloween_movie = HalloweenMovie.find(params[:id])
  end

  def alphabetical
    @all_movies = HalloweenMovie.all
    @halloween_movies = @all_movies.order(:title)
  end
end
