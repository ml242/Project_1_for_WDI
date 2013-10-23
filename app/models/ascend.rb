# == Schema Information
#
# Table name: ascends
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  face_location :string(255)
#  description   :text
#  danger        :integer
#  grade         :string(255)
#  comments      :text
#  crag_id       :integer
#

class Ascend < ActiveRecord::Base
  attr_accessible :name, :face_location, :description, :is_dangerous, :grade, :comments, :crag_id
  has_many :climbs
  has_many :users, :through => :climbs
  belongs_to :crag
end
