class CreateTableClimbs < ActiveRecord::Migration
  def change
    create_table :climbs do |t|
      t.text :histories
      t.integer :stars
      t.timestamps
    end
  end
end