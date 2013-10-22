class AddCragIdToAscends < ActiveRecord::Migration
  def change
    add_column :ascends, :crag_id, :integer
  end
end
