class AddMovieKeywords < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :keywords, :string
  end
end
