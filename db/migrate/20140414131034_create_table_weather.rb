class CreateTableWeather < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.integer :current_temp
      t.string :zip
      t.string :forecast
      t.integer :weather_id
    end
  end
end
