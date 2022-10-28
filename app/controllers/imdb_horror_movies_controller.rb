class ImdbHorrorMoviesController < ApplicationController
  def index
    @imdb_movies = ImdbHorrorMovie.includes(:ReleaseDate).all
  end

  def search 
    @imdb_movies = ImdbHorrorMovie.where("title LIKE ?", "%" + params[:s] + "%")
  end

  def show
    @imdb_movie = ImdbHorrorMovie.find(params[:id])
  end

  def ratings
    @all_imdb_movies = ImdbHorrorMovie.includes(:ReleaseDate).all
    @imdb_movies = @all_imdb_movies.order(rating: :desc)
  end
end
