# == Schema Information
#
# Table name: weathers
#
#  id           :integer          not null, primary key
#  current_temp :integer
#  zip          :string(255)
#  forecast     :string(255)
#  weather_id   :integer
#

class Weather < ActiveRecord::Base
  attr_accessible :current_temp, :zip, :description, :forecast
end
