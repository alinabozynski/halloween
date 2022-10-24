class CreateReleaseDates < ActiveRecord::Migration[6.1]
  def change
    create_table :release_dates do |t|
      t.string :release_date

      t.timestamps
    end
  end
end
