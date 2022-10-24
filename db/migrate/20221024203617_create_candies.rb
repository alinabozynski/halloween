class CreateCandies < ActiveRecord::Migration[6.1]
  def change
    create_table :candies do |t|
      t.string :name
      t.integer :chocolate
      t.integer :fruity
      t.integer :caramel
      t.integer :peanuty_almondy
      t.integer :nougat
      t.integer :crisped_rice_wafer
      t.integer :hard
      t.integer :bar

      t.timestamps
    end
  end
end
