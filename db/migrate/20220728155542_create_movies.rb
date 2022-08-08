class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.boolean "adult"
      t.text "backdrop_path"
      t.integer "genre_ids"
      t.string "original_language"
      t.string "original_title"
      t.text "synopsis"
      t.float "popularity"
      t.text "poster_path"
      t.string "release_date"
      t.string "title"
      t.boolean "video"
      t.float "vote_average"
      t.integer "vote_count"

      t.timestamps
    end
  end
end
