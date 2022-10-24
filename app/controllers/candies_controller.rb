class CandiesController < ApplicationController
  def index
    @candies = Candy.includes(:Sugar).all
  end

  def show
    @candy = Candy.find(params[:id])
  end

  def chocolate
    @candies = Candy.where("chocolate = 1")
  end

  def fruity
    @candies = Candy.where("fruity = 1")
  end

  def caramel
    @candies = Candy.where("caramel = 1")
  end

  def peanuty_almondy
    @candies = Candy.where("peanuty_almondy = 1")
  end

  def nougat
    @candies = Candy.where("nougat = 1")
  end

  def crisped_rice_wafer
    @candies = Candy.where("crisped_rice_wafer = 1")
  end

  def hard
    @candies = Candy.where("hard = 1")
  end

  def bar
    @candies = Candy.where("bar = 1")
  end
end
