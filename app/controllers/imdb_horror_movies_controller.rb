class ImdbHorrorMoviesController < ApplicationController
  def index
    @imdb_movies = ImdbHorrorMovie.includes(:ReleaseDate).all.page(params[:page])
  end

  def search 
    @imdb_movies = ImdbHorrorMovie.where("title LIKE ? AND release_date LIKE ?", "%" + params[:title] + "%", params[:ImdbHorrorMovie][:release_date]).all.page(params[:page])
  end

  def show
    @imdb_movie = ImdbHorrorMovie.find(params[:id])
  end

  def ratings
    @all_imdb_movies = ImdbHorrorMovie.includes(:ReleaseDate).all.page(params[:page])
    @imdb_movies = @all_imdb_movies.order(rating: :desc)
  end
end
