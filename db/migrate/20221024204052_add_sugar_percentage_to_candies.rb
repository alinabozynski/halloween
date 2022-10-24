class AddSugarPercentageToCandies < ActiveRecord::Migration[6.1]
  def change
    add_reference :candies, :sugar, null: false, foreign_key: true
  end
end
