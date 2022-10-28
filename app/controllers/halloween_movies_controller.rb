class HalloweenMoviesController < ApplicationController
  def index
    @halloween_movies = HalloweenMovie.all
  end

  def search
    @halloween_movies = HalloweenMovie.where("title LIKE ?", "%" + params[:s] + "%")
  end

  def show
    @halloween_movie = HalloweenMovie.find(params[:id])
  end

  def alphabetical
    @all_movies = HalloweenMovie.all
    @halloween_movies = @all_movies.order(:title)
  end
end
