class Ascend < ActiveRecord::Base
  has_many :climbs
  has_many :users, :through => :climbs
  belongs_to :crag
  attr_accessible :name, :grade, :crag_id
end