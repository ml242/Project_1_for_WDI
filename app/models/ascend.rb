class Ascend < ActiveRecord::Base
  has_many :users, :through => :ascends
  belongs_to :crags
end