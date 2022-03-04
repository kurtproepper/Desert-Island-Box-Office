class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :release_date
      t.string :director
      t.string :overview
      t.string :poster_path

      t.timestamps
    end
  end
end
