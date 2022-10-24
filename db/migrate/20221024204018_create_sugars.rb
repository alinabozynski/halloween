class CreateSugars < ActiveRecord::Migration[6.1]
  def change
    create_table :sugars do |t|
      t.decimal :sugar_percentage

      t.timestamps
    end
  end
end
