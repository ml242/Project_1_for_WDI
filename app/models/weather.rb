class Weather < ActiveRecord::Base
  attr_accessible :current_temp, :zip, :description, :forecast
end
