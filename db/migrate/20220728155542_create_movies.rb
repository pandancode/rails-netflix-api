class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :full_title
      t.string :year
      t.string :rank
      t.string :rank_up_down
      t.text :img_url
      t.string :crew
      t.string :imdb_rating
      t.string :imdb_rating_count

      t.timestamps
    end
  end
end
