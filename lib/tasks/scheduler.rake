require 'yahoo_weatherman'

desc "This task is called by the Heroku scheduler add-on"
task :weather_getter => :environment do
desc "import data from yahoo to add to database"
  task :import => :environment do
  		p 'getting local weather'
	  	client = Weatherman::Client.new
	  	temp = client.lookup_by_location('10023').condition['temp']
	  	temp = ((temp * 9/5)+32)
	  	z11101 = Weather.first
	  	z11101.current_temp = temp
	  	z11101.save
  end
end