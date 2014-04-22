class AddLocationToCrags < ActiveRecord::Migration
  def change
  	add_column :crags, :has_location, :boolean, :default => false
    add_column :crags, :latitude, :float
    add_column :crags, :longitude, :float
  end
end
