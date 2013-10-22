class Crag < ActiveRecord::Base
  has_many :ascends
  attr_accessible :name
end