class CreateTableClimbs < ActiveRecord::Migration
  def change
    create_table :climbs do |t|
      t.text :histories
      t.integer :stars
      t.integer :user_id
      t.integer :ascend_id
      t.timestamps
    end
  end
end