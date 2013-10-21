class CreateTableRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :route_id
      t.string :face_location
      t.text :description
      t.integer :danger
      t.string :grade
      t.text :comments
    end
  end
end
