class CreateMovieRates < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_rates do |t|
      t.references :movie, null: false, foreign_key: true
      t.integer :rate

      t.timestamps
    end
  end
end
