class HalloweenMoviesController < ApplicationController
  def index
    @halloween_movies = HalloweenMovie.all.page(params[:page])
  end

  def search
    @halloween_movies = HalloweenMovie.where("title LIKE ?", "%" + params[:title] + "%").all.page(params[:page])
  end

  def show
    @halloween_movie = HalloweenMovie.find(params[:id])
  end

  def alphabetical
    @all_movies = HalloweenMovie.all.page(params[:page])
    @halloween_movies = @all_movies.order(:title)
  end
end
