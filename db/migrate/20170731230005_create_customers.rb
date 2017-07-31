class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
