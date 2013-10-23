class CreateTableAscends < ActiveRecord::Migration
  def change
    create_table :ascends do |t|
      t.string :name
      t.string :face_location
      t.text :description
      t.boolean :is_dangerous
      t.string :grade
      t.text :comments
      t.integer :crag_id
    end
  end
end
