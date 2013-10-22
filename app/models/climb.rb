class Climb < ActiveRecord::Base
  belongs_to :users
  belongs_to :routes
end