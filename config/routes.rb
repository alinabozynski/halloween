Rails.application.routes.draw do
  get 'candies/', to: 'candies#index'
  get 'candies/:id', to: 'candies#show', as: 'candy'
  get 'candies/chocolate', to: 'candies#chocolate'
  get 'candies/fruity', to: 'candies#fruity'
  get 'candies/caramel', to: 'candies#caramel'
  get 'candies/peanuty_almondy', to: 'candies#peanuty_almondy'
  get 'candies/nougat', to: 'candies#nougat'
  get 'candies/crisped_rice_wafer', to: 'candies#crisped_rice_wafer'
  get 'candies/hard', to: 'candies#hard'
  get 'candies/bar', to: 'candies#bar'
end
