require 'yahoo_weatherman'

namespace :weather_getter do
  desc "import data from yahoo to add to database"
  task :import => :environment do
	  	client = Weatherman::Client.new
	  	temp = client.lookup_by_location('11101').condition['temp']
	  	temp = ((temp * 9/5)+32)
	  	z11101 = Weather.first
	  	z11101.current_temp = temp
	  	z11101.save
  end
end
