class CreateUsersTable < ActiveRecord::Migration
def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :climber_name
      t.string :face_location
      t.string :avatar
      t.text :description
      t.integer :phone
    end
  end
end
