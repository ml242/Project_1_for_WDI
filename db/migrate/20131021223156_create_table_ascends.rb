class CreateTableAscends < ActiveRecord::Migration
  def change
    create_table :ascends do |t|
      t.string :name
      t.string :face_location
      t.text :description
      t.integer :danger
      t.string :grade
      t.text :comments
    end
  end
end
