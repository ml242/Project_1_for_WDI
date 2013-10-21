class CreateTableCrags < ActiveRecord::Migration
  def change
    create_table :crags do |t|
      t.string :name
      t.integer :crag_id
      t.text :description
      t.string :photo
      t.string :gps_coor
      t.string :gps_photo
      t.timestamps
    end
  end
end