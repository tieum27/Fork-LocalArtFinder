class CreateArts < ActiveRecord::Migration[5.1]
  def change
    create_table :arts do |t|
      t.string :genre
      t.string :description
      t.integer :price
      t.decimal :length
      t.decimal :width
      t.string :medium
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
