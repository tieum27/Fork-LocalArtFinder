class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :website
      t.string :phone
      t.time :opening
      t.time :closing
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.references :artist, foreign_key: true
      t.references :art, foreign_key: true

      t.timestamps
    end
  end
end
