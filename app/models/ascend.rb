class Ascend < ActiveRecord::Base
  has_many :climbs
  belongs_to :crags
end