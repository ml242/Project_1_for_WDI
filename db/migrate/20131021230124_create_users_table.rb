class CreateUsersTable < ActiveRecord::Migration
def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :climber_name
      t.string :avatar
      t.text :description
      t.binary :phone
    end
  end
end
