class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.string "character name"
      t.integer "movie id"
      t.integer "professional id"
      t.timestamps
    end
  end
end

