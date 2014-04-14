# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: 

# class Weather < ActiveRecord::Base
#   attr_accessible :current_temp, :zip, :description, :forecast
# end


every 30.minutes do
	client = Weatherman::Client.new
	temp = client.lookup_by_location('11101').condition['temp']
	temp = ((temp * 9/5)+32)
	z11101 = Weather.first
	z11101.current_temp = temp
	z11101.update
end