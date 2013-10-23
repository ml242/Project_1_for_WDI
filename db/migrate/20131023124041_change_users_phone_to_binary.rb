class ChangeUsersPhoneToBinary < ActiveRecord::Migration
  def up
    remove_column :users, :phone
    add_column :users, :phone, :binary
  end

  def down
    remove_column :users, :phone
    add_column :users, :phone, :integer
  end
end
