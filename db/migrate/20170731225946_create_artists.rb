class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :alias
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :website
      t.decimal :sales
      t.string :phone

      t.timestamps
    end
  end
end
