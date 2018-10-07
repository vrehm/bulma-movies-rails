class ChangeMovieDirectorColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :movies, :director, :release_date
  end
end
