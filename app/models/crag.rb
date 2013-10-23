# == Schema Information
#
# Table name: crags
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  photo       :string(255)
#  gps_coor    :string(255)
#  gps_photo   :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Crag < ActiveRecord::Base
  attr_accessible :name, :description, :photo, :gps_coor, :gps_photo
  has_many :ascends
end
