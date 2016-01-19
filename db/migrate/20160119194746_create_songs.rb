class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :key
      t.text :comment
      t.string :url

      t.timestamps null: false
    end
  end
end
