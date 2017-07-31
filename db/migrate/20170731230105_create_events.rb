class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.time :start
      t.time :end
      t.references :gallery, foreign_key: true
      t.references :artist, foreign_key: true
      t.references :art, foreign_key: true

      t.timestamps
    end
  end
end
