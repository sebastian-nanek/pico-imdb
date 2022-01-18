class AddMovieCaption < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :catch_phrase, :string
  end
end
