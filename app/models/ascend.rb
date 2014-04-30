# == Schema Information
#
# Table name: ascends
#
#  id                             :integer          not null, primary key
#  name                           :string(255)
#  face_location                  :string(255)
#  description                    :text
#  is_dangerous                   :boolean
#  grade                          :string(255)
#  comments                       :text
#  crag_id                        :integer
#  crag_base_image_file_name      :string(255)
#  crag_base_image_content_type   :string(255)
#  crag_base_image_file_size      :integer
#  crag_base_image_updated_at     :datetime
#  crag_edited_image_file_name    :string(255)
#  crag_edited_image_content_type :string(255)
#  crag_edited_image_file_size    :integer
#  crag_edited_image_updated_at   :datetime
#

class Ascend < ActiveRecord::Base
  attr_accessible :name, :face_location, :description, :is_dangerous, :grade, :comments, :crag_id, :crag_base_image_file_name, :crag_edited_image_file_name
  has_many :climbs
  has_many :users, :through => :climbs
  belongs_to :crag
end
