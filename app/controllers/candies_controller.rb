class CandiesController < ApplicationController
  def index
    @candies = Candy.includes(:Sugar).all.page(params[:page])
  end

  def search 
    @candies = Candy.where("name LIKE ?", "%" + params[:s] + "%").all.page(params[:page])
    @candies = Candy.where("sugar_percentage LIKE ?", params[:sugar]).all.page(params[:page])
  end

  def show
    @candy = Candy.find(params[:id])
  end

  def chocolate
    @all = Candy.includes(:Sugar).all.all.page(params[:page])
    @candies = @all.where("chocolate = 1")
  end

  def fruity
    @all = Candy.includes(:Sugar).all.all.page(params[:page])
    @candies = @all.where("fruity = 1")
  end

  def caramel	
    @all = Candy.includes(:Sugar).all.all.page(params[:page])
    @candies = @all.where("caramel = 1")
  end

  def peanuty_almondy
    @all = Candy.includes(:Sugar).all.all.page(params[:page])
    @candies = @all.where("peanuty_almondy = 1")
  end

  def nougat
    @all = Candy.includes(:Sugar).all.all.page(params[:page])
    @candies = @all.where("nougat = 1")
  end

  def crisped_rice_wafer
    @all = Candy.includes(:Sugar).all.all.page(params[:page])
    @candies = @all.where("crisped_rice_wafer = 1")
  end

  def hard
    @all = Candy.includes(:Sugar).all.all.page(params[:page])
    @candies = @all.where("hard = 1")
  end

  def bar
    @all = Candy.includes(:Sugar).all.all.page(params[:page])
    @candies = @all.where("bar = 1")
  end
end
