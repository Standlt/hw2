class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string "title"
      t.string "year released"
      t.string "rated"
      t.integer "studio id"
      t.timestamps
    end
  end
end

