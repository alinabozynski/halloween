Rails.application.routes.draw do
  get 'candies/search', to: 'candies#search' 
  get 'halloween_movie/search', to: 'halloween_movies#search'
  get 'imdb_horror_movie/search', to: 'imdb_horror_movies#search'

  get 'imdb_horror_movies/', to: 'imdb_horror_movies#index'
  get 'imdb_horror_movies/ratings', to: 'imdb_horror_movies#ratings'
  get 'imdb_horror_movies/:id', to: 'imdb_horror_movies#show', as: 'imdb_horror_movie'

  get 'halloween_movies/',to: 'halloween_movies#index'
  get 'halloween_movies/alphabetical', to: 'halloween_movies#alphabetical'
  get 'halloween_movies/:id',to: 'halloween_movies#show', as: 'halloween_movie'

  get 'candies/', to: 'candies#index'
  get 'candies/chocolate', to: 'candies#chocolate'
  get 'candies/fruity', to: 'candies#fruity'
  get 'candies/caramel', to: 'candies#caramel'
  get 'candies/peanuty_almondy', to: 'candies#peanuty_almondy'
  get 'candies/nougat', to: 'candies#nougat'
  get 'candies/crisped_rice_wafer', to: 'candies#crisped_rice_wafer'
  get 'candies/hard', to: 'candies#hard'
  get 'candies/bar', to: 'candies#bar'
  get 'candies/:id', to: 'candies#show', as: 'candy'
end
